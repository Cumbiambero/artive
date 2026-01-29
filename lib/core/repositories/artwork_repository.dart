import 'package:supabase_flutter/supabase_flutter.dart';
import '../models/models.dart';

class ArtworkRepository {
  final SupabaseClient _client;

  ArtworkRepository(this._client);

  Future<List<Artwork>> getAll({
    String? mediumFilter,
    int? yearFilter,
    String? sortBy,
    bool ascending = true,
  }) async {
    var query = _client
        .from('artworks')
        .select('*, artwork_images(*)');

    if (mediumFilter != null && mediumFilter.isNotEmpty) {
      query = query.eq('medium', mediumFilter);
    }
    if (yearFilter != null) {
      query = query.eq('date_year', yearFilter);
    }

    final orderColumn = switch (sortBy) {
      'name' => 'name',
      'date' => 'date_year',
      _ => 'created_at',
    };

    final response = await query.order(orderColumn, ascending: ascending);
    return (response as List).map((e) => Artwork.fromJson(e)).toList();
  }

  Future<Artwork?> getById(int id) async {
    final response = await _client
        .from('artworks')
        .select('*, artwork_images(*)')
        .eq('id', id)
        .single();
    return Artwork.fromJson(response);
  }

  Future<Artwork> create(Artwork artwork) async {
    final response = await _client
        .from('artworks')
        .insert(artwork.toJson())
        .select('*, artwork_images(*)')
        .single();
    return Artwork.fromJson(response);
  }

  Future<Artwork> update(Artwork artwork) async {
    final response = await _client
        .from('artworks')
        .update(artwork.toJson())
        .eq('id', artwork.id!)
        .select('*, artwork_images(*)')
        .single();
    return Artwork.fromJson(response);
  }

  Future<void> delete(int id) async {
    await _client.from('artworks').delete().eq('id', id);
  }

  Future<List<String>> getDistinctMedia() async {
    final response = await _client
        .from('artworks')
        .select('medium')
        .order('medium');
    final media = (response as List)
        .map((e) => e['medium'] as String)
        .toSet()
        .toList();
    return media;
  }

  Future<List<int>> getDistinctYears() async {
    final response = await _client
        .from('artworks')
        .select('date_year')
        .not('date_year', 'is', null)
        .order('date_year', ascending: false);
    final years = (response as List)
        .map((e) => e['date_year'] as int)
        .toSet()
        .toList();
    return years;
  }

  Future<List<Artwork>> search(String query) async {
    final response = await _client
        .from('artworks')
        .select('*, artwork_images(*)')
        .or('name.ilike.%$query%,description.ilike.%$query%,medium.ilike.%$query%')
        .order('created_at', ascending: false);
    return (response as List).map((e) => Artwork.fromJson(e)).toList();
  }
}
