import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import '../models/models.dart';
import '../repositories/repositories.dart';
import '../services/services.dart';

class ArtworkProvider extends ChangeNotifier {
  final ArtworkRepository _artworkRepo;
  final ImageRepository _imageRepo;
  final StorageService _storageService;

  List<Artwork> _artworks = [];
  List<String> _media = [];
  List<int> _years = [];
  bool _isLoading = false;
  String? _error;
  String? _mediumFilter;
  int? _yearFilter;
  String _sortBy = 'created';
  bool _ascending = false;

  ArtworkProvider(this._artworkRepo, this._imageRepo, this._storageService);

  List<Artwork> get artworks => _artworks;
  List<String> get media => _media;
  List<int> get years => _years;
  bool get isLoading => _isLoading;
  String? get error => _error;
  String? get mediumFilter => _mediumFilter;
  int? get yearFilter => _yearFilter;
  String get sortBy => _sortBy;
  bool get ascending => _ascending;

  Future<void> loadArtworks() async {
    _isLoading = true;
    _error = null;
    notifyListeners();

    try {
      _artworks = await _artworkRepo.getAll(
        mediumFilter: _mediumFilter,
        yearFilter: _yearFilter,
        sortBy: _sortBy,
        ascending: _ascending,
      );
      _media = await _artworkRepo.getDistinctMedia();
      _years = await _artworkRepo.getDistinctYears();
    } catch (e) {
      _error = e.toString();
    }

    _isLoading = false;
    notifyListeners();
  }

  void setMediumFilter(String? medium) {
    _mediumFilter = medium;
    loadArtworks();
  }

  void setYearFilter(int? year) {
    _yearFilter = year;
    loadArtworks();
  }

  void setSortBy(String sortBy, bool ascending) {
    _sortBy = sortBy;
    _ascending = ascending;
    loadArtworks();
  }

  Future<List<Artwork>> search(String query) async {
    return _artworkRepo.search(query);
  }

  Future<Artwork> createArtwork(Artwork artwork) async {
    final created = await _artworkRepo.create(artwork);
    await loadArtworks();
    return created;
  }

  Future<Artwork> updateArtwork(Artwork artwork) async {
    final updated = await _artworkRepo.update(artwork);
    await loadArtworks();
    return updated;
  }

  Future<void> deleteArtwork(int id) async {
    final artwork = _artworks.firstWhere((a) => a.id == id);
    
    final pathsToDelete = <String>[];
    for (final image in artwork.images) {
      pathsToDelete.add(image.storagePath);
      if (image.thumbnailPath != null) {
        pathsToDelete.add(image.thumbnailPath!);
      }
    }
    
    await _storageService.deleteImages(pathsToDelete);
    await _imageRepo.deleteByArtworkId(id);
    await _artworkRepo.delete(id);
    await loadArtworks();
  }

  Future<ArtworkImage> addImage(int artworkId, XFile file, ImageTag tag) async {
    final storagePath = await _storageService.uploadImage(file);
    final thumbnailPath = await _storageService.uploadThumbnail(file);
    
    final artwork = _artworks.firstWhere((a) => a.id == artworkId);
    final order = artwork.images.length;
    
    final image = ArtworkImage(
      artworkId: artworkId,
      storagePath: storagePath,
      thumbnailPath: thumbnailPath,
      tag: tag,
      order: order,
    );
    
    final created = await _imageRepo.create(image);
    await loadArtworks();
    return created;
  }

  Future<void> deleteImage(ArtworkImage image) async {
    await _storageService.deleteImage(image.storagePath);
    if (image.thumbnailPath != null) {
      await _storageService.deleteImage(image.thumbnailPath!);
    }
    await _imageRepo.delete(image.id!);
    await loadArtworks();
  }

  Future<void> updateImageTag(ArtworkImage image, ImageTag tag) async {
    await _imageRepo.update(image.copyWith(tag: tag));
    await loadArtworks();
  }

  String getImageUrl(String path) => _storageService.getPublicUrl(path);
}
