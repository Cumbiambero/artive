enum ImageTag {
  main,
  photoReference,
  scan;

  String get displayKey {
    switch (this) {
      case ImageTag.main:
        return 'mainImage';
      case ImageTag.photoReference:
        return 'photoReference';
      case ImageTag.scan:
        return 'scan';
    }
  }

  static ImageTag fromString(String value) {
    switch (value) {
      case 'main':
        return ImageTag.main;
      case 'photo_reference':
      case 'photoReference':
        return ImageTag.photoReference;
      case 'scan':
        return ImageTag.scan;
      default:
        return ImageTag.main;
    }
  }

  String toDbValue() {
    switch (this) {
      case ImageTag.main:
        return 'main';
      case ImageTag.photoReference:
        return 'photo_reference';
      case ImageTag.scan:
        return 'scan';
    }
  }
}

class ArtworkImage {
  final String? id;
  final int? artworkId;
  final String storagePath;
  final String? thumbnailPath;
  final ImageTag tag;
  final int order;

  ArtworkImage({
    this.id,
    this.artworkId,
    required this.storagePath,
    this.thumbnailPath,
    required this.tag,
    required this.order,
  });

  factory ArtworkImage.fromJson(Map<String, dynamic> json) {
    return ArtworkImage(
      id: json['id']?.toString(),
      artworkId: json['artwork_id'],
      storagePath: json['storage_path'],
      thumbnailPath: json['thumbnail_path'],
      tag: ImageTag.fromString(json['tag']),
      order: json['sort_order'] ?? 0,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      if (artworkId != null) 'artwork_id': artworkId,
      'storage_path': storagePath,
      'thumbnail_path': thumbnailPath,
      'tag': tag.toDbValue(),
      'sort_order': order,
    };
  }

  ArtworkImage copyWith({
    String? id,
    int? artworkId,
    String? storagePath,
    String? thumbnailPath,
    ImageTag? tag,
    int? order,
  }) {
    return ArtworkImage(
      id: id ?? this.id,
      artworkId: artworkId ?? this.artworkId,
      storagePath: storagePath ?? this.storagePath,
      thumbnailPath: thumbnailPath ?? this.thumbnailPath,
      tag: tag ?? this.tag,
      order: order ?? this.order,
    );
  }
}
