import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/models.dart';

class ArtistProfileRepository {
  final SupabaseClient _client;

  ArtistProfileRepository(this._client);

  Future<ArtistProfile> fetchProfile() async {
    final response = await _client
        .from('artist_profile')
        .select()
        .eq('id', 1)
        .maybeSingle();

    if (response == null) {
      return const ArtistProfile(name: '');
    }
    return ArtistProfile.fromJson(response);
  }

  Future<void> saveProfile(ArtistProfile profile) async {
    await _client
        .from('artist_profile')
        .upsert(profile.toJson(), onConflict: 'id');
  }
}
