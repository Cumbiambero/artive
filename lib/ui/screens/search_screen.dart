import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/models/models.dart';
import '../../core/providers/providers.dart';
import '../../l10n/app_localizations.dart';
import '../widgets/widgets.dart';
import 'artwork_detail_screen.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final _searchController = TextEditingController();
  List<Artwork>? _results;
  bool _isLoading = false;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: l10n.search,
            border: InputBorder.none,
          ),
          autofocus: true,
          onSubmitted: (_) => _search(),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: _search,
          ),
        ],
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    if (_isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    if (_results == null) {
      return Center(
        child: Text(l10n.search),
      );
    }

    if (_results!.isEmpty) {
      return Center(
        child: Text(l10n.noArtworks),
      );
    }

    return GridView.builder(
      padding: const EdgeInsets.all(8),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        crossAxisSpacing: 8,
        mainAxisSpacing: 8,
      ),
      itemCount: _results!.length,
      itemBuilder: (context, index) {
        final artwork = _results![index];
        return ArtworkCard(
          artwork: artwork,
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => ArtworkDetailScreen(artworkId: artwork.id!),
            ),
          ),
        );
      },
    );
  }

  Future<void> _search() async {
    final query = _searchController.text.trim();
    if (query.isEmpty) return;

    setState(() => _isLoading = true);

    try {
      final provider = context.read<ArtworkProvider>();
      _results = await provider.search(query);
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }
}
