import 'dart:typed_data';
import 'package:flutter/foundation.dart';
import 'package:flutter_image_compress/flutter_image_compress.dart';
import 'package:image_picker/image_picker.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:uuid/uuid.dart';
import '../config/app_config.dart';

class StorageService {
  final SupabaseClient _client;
  final StorageConfig _config;
  final _uuid = const Uuid();
  final Map<String, String> _urlCache = {};

  StorageService(this._client, this._config);

  String get bucketName => _config.bucketName;

  Future<String> uploadImage(XFile file, {bool isThumbnail = false}) async {
    final bytes = await file.readAsBytes();
    final compressedBytes = await _compressImage(bytes);
    
    final extension = file.path.split('.').last.toLowerCase();
    final outputExt = (extension == 'png') ? 'png' : 'jpg';
    final fileName = '${_uuid.v4()}.$outputExt';
    final folder = isThumbnail ? 'thumbnails' : 'originals';
    final path = '$folder/$fileName';

    await _client.storage.from(bucketName).uploadBinary(
      path,
      compressedBytes,
      fileOptions: FileOptions(
        contentType: 'image/$outputExt',
        upsert: true,
      ),
    );

    return path;
  }

  Future<Uint8List> _compressImage(Uint8List bytes) async {
    final result = await FlutterImageCompress.compressWithList(
      bytes,
      quality: _config.compressionQuality,
      format: CompressFormat.jpeg,
    );
    return result;
  }

  Future<String?> uploadThumbnail(XFile file) async {
    if (!_config.generateThumbnails) return null;
    return uploadImage(file, isThumbnail: true);
  }

  String getPublicUrl(String path) {
    if (_urlCache.containsKey(path)) {
      return _urlCache[path]!;
    }
    
    try {
      final signedUrl = _client.storage.from(bucketName).getPublicUrl(path);
      _urlCache[path] = signedUrl;
      return signedUrl;
    } catch (_) {
      return _client.storage.from(bucketName).getPublicUrl(path);
    }
  }

  Future<String> getSignedUrl(String path, {int expiresIn = 3600}) async {
    final cacheKey = '${path}_signed';
    if (_urlCache.containsKey(cacheKey)) {
      return _urlCache[cacheKey]!;
    }
    
    final signedUrl = await _client.storage.from(bucketName).createSignedUrl(path, expiresIn);
    _urlCache[cacheKey] = signedUrl;
    return signedUrl;
  }

  Future<void> deleteImage(String path) async {
    _urlCache.remove(path);
    _urlCache.remove('${path}_signed');
    await _client.storage.from(bucketName).remove([path]);
  }

  Future<void> deleteImages(List<String> paths) async {
    if (paths.isEmpty) return;
    for (final path in paths) {
      _urlCache.remove(path);
      _urlCache.remove('${path}_signed');
    }
    await _client.storage.from(bucketName).remove(paths);
  }
}
