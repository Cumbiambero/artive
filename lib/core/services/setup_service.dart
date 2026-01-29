import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SetupService {
  static const _urlKey = 'supabase_url';
  static const _anonKeyKey = 'supabase_anon_key';
  static const _setupCompleteKey = 'setup_complete';

  static Future<bool> isSetupComplete() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool(_setupCompleteKey) ?? false;
  }

  static Future<Map<String, String>?> getSavedCredentials() async {
    final prefs = await SharedPreferences.getInstance();
    final url = prefs.getString(_urlKey);
    final anonKey = prefs.getString(_anonKeyKey);
    if (url != null && anonKey != null && url.isNotEmpty && anonKey.isNotEmpty) {
      return {'url': url, 'anonKey': anonKey};
    }
    return null;
  }

  static Future<void> saveCredentials(String url, String anonKey) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_urlKey, url);
    await prefs.setString(_anonKeyKey, anonKey);
  }

  static Future<void> markSetupComplete() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool(_setupCompleteKey, true);
  }

  static Future<void> resetSetup() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.remove(_urlKey);
    await prefs.remove(_anonKeyKey);
    await prefs.remove(_setupCompleteKey);
  }

  static Future<({bool success, String? error})> validateConnection(String url, String anonKey) async {
    try {
      await Supabase.initialize(url: url, anonKey: anonKey);
      // Try to list storage buckets - this validates the connection without needing tables
      final client = Supabase.instance.client;
      await client.storage.listBuckets();
      return (success: true, error: null);
    } on StorageException catch (e) {
      // Even permission errors mean the connection works
      return (success: true, error: null);
    } catch (e) {
      final msg = e.toString().toLowerCase();
      // If we get specific API errors, connection is working
      if (msg.contains('permission') || msg.contains('policy') || msg.contains('unauthorized') || msg.contains('jwt')) {
        return (success: true, error: null);
      }
      return (success: false, error: 'Could not connect to Supabase. Please check URL and key.');
    }
  }

  static Future<({bool success, String? error})> createDatabaseSchema() async {
    try {
      final client = Supabase.instance.client;
      
      await client.rpc('exec_sql', params: {
        'query': '''
          CREATE TABLE IF NOT EXISTS artworks (
            id SERIAL PRIMARY KEY,
            name TEXT NOT NULL,
            description TEXT,
            date_month INTEGER CHECK (date_month >= 1 AND date_month <= 12),
            date_year INTEGER CHECK (date_year >= 1900 AND date_year <= 2100),
            dimension TEXT,
            medium TEXT,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
          );
        '''
      });

      await client.rpc('exec_sql', params: {
        'query': '''
          CREATE TABLE IF NOT EXISTS artwork_images (
            id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
            artwork_id INTEGER NOT NULL REFERENCES artworks(id) ON DELETE CASCADE,
            storage_path TEXT NOT NULL,
            thumbnail_path TEXT,
            tag TEXT NOT NULL CHECK (tag IN ('main', 'photo_reference', 'scan')),
            sort_order INTEGER DEFAULT 0,
            created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
          );
        '''
      });

      return (success: true, error: null);
    } on PostgrestException catch (e) {
      if (e.code == '42883') {
        return (success: false, error: 'rpc_not_available');
      }
      return (success: false, error: e.message);
    } catch (e) {
      return (success: false, error: e.toString());
    }
  }

  static Future<({bool exists, bool created, String? error})> ensureStorageBucket() async {
    try {
      final client = Supabase.instance.client;
      final buckets = await client.storage.listBuckets();
      final exists = buckets.any((b) => b.name == 'artworks');
      
      if (exists) {
        return (exists: true, created: false, error: null);
      }

      await client.storage.createBucket('artworks', const BucketOptions(public: false));
      return (exists: false, created: true, error: null);
    } on StorageException catch (e) {
      if (e.statusCode == '403' || e.message.contains('not authorized')) {
        return (exists: false, created: false, error: 'bucket_permission_denied');
      }
      return (exists: false, created: false, error: e.message);
    } catch (e) {
      return (exists: false, created: false, error: e.toString());
    }
  }

  static Future<bool> testTableAccess() async {
    try {
      final client = Supabase.instance.client;
      await client.from('artworks').select().limit(1);
      return true;
    } catch (_) {
      return false;
    }
  }
}
