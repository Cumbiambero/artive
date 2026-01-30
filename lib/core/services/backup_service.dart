import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';
import 'package:archive/archive.dart';
import 'package:path/path.dart' as path;
import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/models.dart';

class BackupService {
  final SupabaseClient _client;
  final String _bucketName;

  BackupService(this._client, this._bucketName);

  /// Creates a backup archive containing all artworks and images
  /// Returns the backup data as bytes (ZIP file)
  Future<Uint8List> createBackup({
    void Function(String status, double progress)? onProgress,
  }) async {
    onProgress?.call('Loading artworks...', 0.0);

    // Get all artworks with images
    final response = await _client
        .from('artworks')
        .select('*, artwork_images(*)');
    
    final artworks = (response as List).map((e) => Artwork.fromJson(e)).toList();
    
    final archive = Archive();
    
    // Create manifest with artwork data
    final manifest = {
      'version': 1,
      'created_at': DateTime.now().toIso8601String(),
      'artworks': artworks.map((a) => _artworkToBackupJson(a)).toList(),
    };
    
    final manifestJson = const JsonEncoder.withIndent('  ').convert(manifest);
    archive.addFile(ArchiveFile(
      'manifest.json',
      manifestJson.length,
      utf8.encode(manifestJson),
    ));

    // Download and add images
    int totalImages = artworks.fold(0, (sum, a) => sum + a.images.length);
    int processedImages = 0;

    for (final artwork in artworks) {
      for (final image in artwork.images) {
        try {
          onProgress?.call(
            'Downloading image ${processedImages + 1}/$totalImages...',
            0.1 + (processedImages / totalImages) * 0.8,
          );

          // Download original image
          final imageBytes = await _client.storage
              .from(_bucketName)
              .download(image.storagePath);
          
          final imagePath = 'images/${image.storagePath}';
          archive.addFile(ArchiveFile(imagePath, imageBytes.length, imageBytes));

          // Download thumbnail if exists
          if (image.thumbnailPath != null) {
            try {
              final thumbBytes = await _client.storage
                  .from(_bucketName)
                  .download(image.thumbnailPath!);
              final thumbPath = 'images/${image.thumbnailPath}';
              archive.addFile(ArchiveFile(thumbPath, thumbBytes.length, thumbBytes));
            } catch (_) {
              // Thumbnail might not exist, continue
            }
          }
        } catch (e) {
          // Log error but continue with other images
          print('Failed to download image ${image.storagePath}: $e');
        }
        processedImages++;
      }
    }

    onProgress?.call('Creating archive...', 0.9);
    
    final zipData = ZipEncoder().encode(archive);
    if (zipData == null) {
      throw Exception('Failed to create backup archive');
    }

    onProgress?.call('Backup complete!', 1.0);
    
    return Uint8List.fromList(zipData);
  }

  /// Restores data from a backup archive
  /// Returns the number of artworks restored
  Future<int> restoreBackup(
    Uint8List backupData, {
    bool clearExisting = false,
    void Function(String status, double progress)? onProgress,
  }) async {
    onProgress?.call('Reading backup...', 0.0);

    final archive = ZipDecoder().decodeBytes(backupData);
    
    // Find and parse manifest
    final manifestFile = archive.findFile('manifest.json');
    if (manifestFile == null) {
      throw Exception('Invalid backup: manifest.json not found');
    }

    final manifestJson = utf8.decode(manifestFile.content as List<int>);
    final manifest = json.decode(manifestJson) as Map<String, dynamic>;
    
    final version = manifest['version'] as int;
    if (version != 1) {
      throw Exception('Unsupported backup version: $version');
    }

    final artworksData = manifest['artworks'] as List<dynamic>;
    
    if (clearExisting) {
      onProgress?.call('Clearing existing data...', 0.05);
      await _clearAllData();
    }

    int restored = 0;
    final totalArtworks = artworksData.length;

    for (int i = 0; i < artworksData.length; i++) {
      final artworkData = artworksData[i] as Map<String, dynamic>;
      
      onProgress?.call(
        'Restoring artwork ${i + 1}/$totalArtworks...',
        0.1 + (i / totalArtworks) * 0.8,
      );

      try {
        await _restoreArtwork(artworkData, archive);
        restored++;
      } catch (e) {
        print('Failed to restore artwork: $e');
      }
    }

    onProgress?.call('Restore complete!', 1.0);
    
    return restored;
  }

  Map<String, dynamic> _artworkToBackupJson(Artwork artwork) {
    return {
      'name': artwork.name,
      'description': artwork.description,
      'date_month': artwork.dateMonth,
      'date_year': artwork.dateYear,
      'dimension': artwork.dimension,
      'medium': artwork.medium,
      'created_at': artwork.createdAt?.toIso8601String(),
      'images': artwork.images.map((img) => {
        'storage_path': img.storagePath,
        'thumbnail_path': img.thumbnailPath,
        'tag': img.tag.toDbValue(),
        'sort_order': img.order,
      }).toList(),
    };
  }

  Future<void> _restoreArtwork(
    Map<String, dynamic> data,
    Archive archive,
  ) async {
    // Create artwork record
    final artworkResponse = await _client
        .from('artworks')
        .insert({
          'name': data['name'],
          'description': data['description'],
          'date_month': data['date_month'],
          'date_year': data['date_year'],
          'dimension': data['dimension'],
          'medium': data['medium'],
        })
        .select()
        .single();

    final artworkId = artworkResponse['id'] as int;
    
    // Restore images
    final images = data['images'] as List<dynamic>? ?? [];
    
    for (final imageData in images) {
      final storagePath = imageData['storage_path'] as String;
      final thumbnailPath = imageData['thumbnail_path'] as String?;
      
      // Upload original image
      final imageFile = archive.findFile('images/$storagePath');
      if (imageFile != null) {
        await _client.storage.from(_bucketName).uploadBinary(
          storagePath,
          Uint8List.fromList(imageFile.content as List<int>),
          fileOptions: const FileOptions(upsert: true),
        );
      }

      // Upload thumbnail if exists
      if (thumbnailPath != null) {
        final thumbFile = archive.findFile('images/$thumbnailPath');
        if (thumbFile != null) {
          await _client.storage.from(_bucketName).uploadBinary(
            thumbnailPath,
            Uint8List.fromList(thumbFile.content as List<int>),
            fileOptions: const FileOptions(upsert: true),
          );
        }
      }

      // Create image record
      await _client.from('artwork_images').insert({
        'artwork_id': artworkId,
        'storage_path': storagePath,
        'thumbnail_path': thumbnailPath,
        'tag': imageData['tag'],
        'sort_order': imageData['sort_order'] ?? 0,
      });
    }
  }

  Future<void> _clearAllData() async {
    // Get all images first
    final artworks = await _client
        .from('artworks')
        .select('*, artwork_images(*)');
    
    // Collect all storage paths
    final paths = <String>[];
    for (final artwork in artworks) {
      final images = artwork['artwork_images'] as List<dynamic>? ?? [];
      for (final image in images) {
        paths.add(image['storage_path'] as String);
        if (image['thumbnail_path'] != null) {
          paths.add(image['thumbnail_path'] as String);
        }
      }
    }

    // Delete from storage
    if (paths.isNotEmpty) {
      try {
        await _client.storage.from(_bucketName).remove(paths);
      } catch (_) {
        // Continue even if storage delete fails
      }
    }

    // Delete all artwork records (images cascade)
    await _client.from('artworks').delete().neq('id', 0);
  }

  /// Get backup file name with timestamp
  static String getBackupFileName() {
    final now = DateTime.now();
    final timestamp = '${now.year}${now.month.toString().padLeft(2, '0')}${now.day.toString().padLeft(2, '0')}_${now.hour.toString().padLeft(2, '0')}${now.minute.toString().padLeft(2, '0')}';
    return 'artive_backup_$timestamp.zip';
  }
}
