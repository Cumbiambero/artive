import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/models.dart';

class ImageRepository {
  final SupabaseClient _client;

  ImageRepository(this._client);

  Future<ArtworkImage> create(ArtworkImage image) async {
    final response = await _client
        .from('artwork_images')
        .insert(image.toJson())
        .select()
        .single();
    return ArtworkImage.fromJson(response);
  }

  Future<void> delete(String id) async {
    await _client.from('artwork_images').delete().eq('id', id);
  }

  Future<void> deleteByArtworkId(int artworkId) async {
    await _client.from('artwork_images').delete().eq('artwork_id', artworkId);
  }

  Future<ArtworkImage> update(ArtworkImage image) async {
    final response = await _client
        .from('artwork_images')
        .update(image.toJson())
        .eq('id', image.id!)
        .select()
        .single();
    return ArtworkImage.fromJson(response);
  }

  Future<List<ArtworkImage>> getByArtworkId(int artworkId) async {
    final response = await _client
        .from('artwork_images')
        .select()
        .eq('artwork_id', artworkId)
        .order('sort_order');
    return (response as List).map((e) => ArtworkImage.fromJson(e)).toList();
  }
}
