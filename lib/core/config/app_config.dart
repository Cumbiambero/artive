import 'dart:convert';
import 'package:flutter/services.dart';

class AppConfig {
  final SupabaseConfig supabase;
  final StorageConfig storage;
  final CloudflareR2Config cloudflareR2;

  AppConfig({
    required this.supabase,
    required this.storage,
    required this.cloudflareR2,
  });

  factory AppConfig.fromJson(Map<String, dynamic> json) {
    return AppConfig(
      supabase: SupabaseConfig.fromJson(json['supabase']),
      storage: StorageConfig.fromJson(json['storage']),
      cloudflareR2: CloudflareR2Config.fromJson(json['cloudflareR2']),
    );
  }

  factory AppConfig.defaults() {
    return AppConfig(
      supabase: SupabaseConfig(url: '', anonKey: ''),
      storage: StorageConfig(
        bucketName: 'artworks',
        maxImageSizeMB: 10,
        compressionQuality: 85,
        generateThumbnails: true,
        thumbnailSize: 300,
      ),
      cloudflareR2: CloudflareR2Config(
        enabled: false,
        accountId: '',
        accessKeyId: '',
        secretAccessKey: '',
        bucketName: '',
        publicUrl: '',
      ),
    );
  }

  static Future<AppConfig> load() async {
    try {
      final jsonString = await rootBundle.loadString('assets/config/app_config.json');
      return AppConfig.fromJson(json.decode(jsonString));
    } catch (_) {
      return AppConfig.defaults();
    }
  }
}

class SupabaseConfig {
  final String url;
  final String anonKey;

  SupabaseConfig({required this.url, required this.anonKey});

  factory SupabaseConfig.fromJson(Map<String, dynamic> json) {
    return SupabaseConfig(
      url: json['url'] ?? '',
      anonKey: json['anonKey'] ?? '',
    );
  }

  bool get isConfigured => url.isNotEmpty && url != 'YOUR_SUPABASE_URL';
}

class StorageConfig {
  final String bucketName;
  final int maxImageSizeMB;
  final int compressionQuality;
  final bool generateThumbnails;
  final int thumbnailSize;

  StorageConfig({
    required this.bucketName,
    required this.maxImageSizeMB,
    required this.compressionQuality,
    required this.generateThumbnails,
    required this.thumbnailSize,
  });

  factory StorageConfig.fromJson(Map<String, dynamic> json) {
    return StorageConfig(
      bucketName: json['bucketName'] ?? 'artworks',
      maxImageSizeMB: json['maxImageSizeMB'] ?? 5,
      compressionQuality: json['compressionQuality'] ?? 80,
      generateThumbnails: json['generateThumbnails'] ?? true,
      thumbnailSize: json['thumbnailSize'] ?? 300,
    );
  }
}

class CloudflareR2Config {
  final bool enabled;
  final String accountId;
  final String accessKeyId;
  final String secretAccessKey;
  final String bucketName;
  final String publicUrl;

  CloudflareR2Config({
    required this.enabled,
    required this.accountId,
    required this.accessKeyId,
    required this.secretAccessKey,
    required this.bucketName,
    required this.publicUrl,
  });

  factory CloudflareR2Config.fromJson(Map<String, dynamic> json) {
    return CloudflareR2Config(
      enabled: json['enabled'] ?? false,
      accountId: json['accountId'] ?? '',
      accessKeyId: json['accessKeyId'] ?? '',
      secretAccessKey: json['secretAccessKey'] ?? '',
      bucketName: json['bucketName'] ?? '',
      publicUrl: json['publicUrl'] ?? '',
    );
  }

  bool get isConfigured => 
    enabled && 
    accountId.isNotEmpty && 
    accessKeyId.isNotEmpty && 
    secretAccessKey.isNotEmpty && 
    bucketName.isNotEmpty;
}
