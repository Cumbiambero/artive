import 'artwork_image.dart';

class Artwork {
  final int? id;
  final String name;
  final String? description;
  final int? dateMonth;
  final int? dateYear;
  final String dimension;
  final String medium;
  final DateTime? createdAt;
  final List<ArtworkImage> images;

  Artwork({
    this.id,
    required this.name,
    this.description,
    this.dateMonth,
    this.dateYear,
    required this.dimension,
    required this.medium,
    this.createdAt,
    this.images = const [],
  });

  factory Artwork.fromJson(Map<String, dynamic> json) {
    return Artwork(
      id: json['id'],
      name: json['name'],
      description: json['description'],
      dateMonth: json['date_month'],
      dateYear: json['date_year'],
      dimension: json['dimension'],
      medium: json['medium'],
      createdAt: json['created_at'] != null 
        ? DateTime.parse(json['created_at']) 
        : null,
      images: (json['artwork_images'] as List<dynamic>?)
        ?.map((e) => ArtworkImage.fromJson(e))
        .toList() ?? [],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      if (id != null) 'id': id,
      'name': name,
      'description': description,
      'date_month': dateMonth,
      'date_year': dateYear,
      'dimension': dimension,
      'medium': medium,
    };
  }

  Artwork copyWith({
    int? id,
    String? name,
    String? description,
    int? dateMonth,
    int? dateYear,
    String? dimension,
    String? medium,
    DateTime? createdAt,
    List<ArtworkImage>? images,
  }) {
    return Artwork(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      dateMonth: dateMonth ?? this.dateMonth,
      dateYear: dateYear ?? this.dateYear,
      dimension: dimension ?? this.dimension,
      medium: medium ?? this.medium,
      createdAt: createdAt ?? this.createdAt,
      images: images ?? this.images,
    );
  }

  /// Returns the preferred thumbnail image: Scan > Photo > Reference
  ArtworkImage? get mainImage {
    if (images.isEmpty) return null;
    // Return first image by priority: scan (0), photo/main (1), reference (2)
    return sortedImages.first;
  }

  /// Returns images sorted by tag: Scan first, then Photo, then Reference
  List<ArtworkImage> get sortedImages {
    final sorted = List<ArtworkImage>.from(images);
    sorted.sort((a, b) => a.tag.sortOrder.compareTo(b.tag.sortOrder));
    return sorted;
  }

  String get dateDisplay {
    if (dateMonth != null && dateYear != null) {
      return '$dateMonth/$dateYear';
    } else if (dateYear != null) {
      return '$dateYear';
    }
    return '';
  }
}
