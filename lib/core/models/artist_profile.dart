class ArtistProfile {
  final String name;
  final String? bio;
  final String? contactEmail;
  final String? contactInstagram;
  final String? contactWebsite;
  final String? contactPhone;
  final String? contactFacebook;
  final String? contactLocation;

  const ArtistProfile({
    required this.name,
    this.bio,
    this.contactEmail,
    this.contactInstagram,
    this.contactWebsite,
    this.contactPhone,
    this.contactFacebook,
    this.contactLocation,
  });

  factory ArtistProfile.fromJson(Map<String, dynamic> json) {
    return ArtistProfile(
      name: json['name'] ?? '',
      bio: json['bio'],
      contactEmail: json['contact_email'],
      contactInstagram: json['contact_instagram'],
      contactWebsite: json['contact_website'],
      contactPhone: json['contact_phone'],
      contactFacebook: json['contact_facebook'],
      contactLocation: json['contact_location'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': 1,
      'name': name,
      'bio': bio,
      'contact_email': contactEmail,
      'contact_instagram': contactInstagram,
      'contact_website': contactWebsite,
      'contact_phone': contactPhone,
      'contact_facebook': contactFacebook,
      'contact_location': contactLocation,
      'updated_at': DateTime.now().toIso8601String(),
    };
  }

  ArtistProfile copyWith({
    String? name,
    String? bio,
    String? contactEmail,
    String? contactInstagram,
    String? contactWebsite,
    String? contactPhone,
    String? contactFacebook,
    String? contactLocation,
  }) {
    return ArtistProfile(
      name: name ?? this.name,
      bio: bio ?? this.bio,
      contactEmail: contactEmail ?? this.contactEmail,
      contactInstagram: contactInstagram ?? this.contactInstagram,
      contactWebsite: contactWebsite ?? this.contactWebsite,
      contactPhone: contactPhone ?? this.contactPhone,
      contactFacebook: contactFacebook ?? this.contactFacebook,
      contactLocation: contactLocation ?? this.contactLocation,
    );
  }

  bool get hasAnyContact =>
      (contactEmail?.isNotEmpty ?? false) ||
      (contactInstagram?.isNotEmpty ?? false) ||
      (contactWebsite?.isNotEmpty ?? false) ||
      (contactPhone?.isNotEmpty ?? false) ||
      (contactFacebook?.isNotEmpty ?? false) ||
      (contactLocation?.isNotEmpty ?? false);
}
