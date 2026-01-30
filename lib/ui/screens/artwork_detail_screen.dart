import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../../core/models/models.dart';
import '../../core/providers/providers.dart';
import '../../l10n/app_localizations.dart';
import 'artwork_form_screen.dart';

class ArtworkDetailScreen extends StatefulWidget {
  final int artworkId;

  const ArtworkDetailScreen({super.key, required this.artworkId});

  @override
  State<ArtworkDetailScreen> createState() => _ArtworkDetailScreenState();
}

class _ArtworkDetailScreenState extends State<ArtworkDetailScreen> {
  int _currentImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final provider = context.watch<ArtworkProvider>();
    
    final artwork = provider.artworks.where((a) => a.id == widget.artworkId).firstOrNull;
    
    if (artwork == null) {
      return Scaffold(
        appBar: AppBar(),
        body: Center(child: Text(l10n.error)),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(artwork.name),
        actions: [
          IconButton(
            icon: const Icon(Icons.edit),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ArtworkFormScreen(artwork: artwork),
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.delete),
            onPressed: () => _confirmDelete(context, artwork),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (artwork.sortedImages.isNotEmpty) ...[
              AspectRatio(
                aspectRatio: 1,
                child: PageView.builder(
                  onPageChanged: (i) => setState(() => _currentImageIndex = i),
                  itemCount: artwork.sortedImages.length,
                  itemBuilder: (_, index) {
                    final image = artwork.sortedImages[index];
                    return GestureDetector(
                      onTap: () => _showFullImage(context, provider, image),
                      child: CachedNetworkImage(
                        imageUrl: provider.getImageUrl(image.storagePath),
                        fit: BoxFit.contain,
                        placeholder: (_, __) => const Center(
                          child: CircularProgressIndicator(),
                        ),
                      ),
                    );
                  },
                ),
              ),
              if (artwork.sortedImages.length > 1)
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      artwork.sortedImages.length,
                      (i) => Container(
                        width: 8,
                        height: 8,
                        margin: const EdgeInsets.symmetric(horizontal: 4),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: i == _currentImageIndex
                              ? Theme.of(context).colorScheme.primary
                              : Theme.of(context).colorScheme.outline,
                        ),
                      ),
                    ),
                  ),
                ),
            ],
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildInfoRow(l10n.name, artwork.name),
                  if (artwork.description?.isNotEmpty == true)
                    _buildInfoRow(l10n.description, artwork.description!),
                  _buildInfoRow(l10n.date, artwork.dateDisplay),
                  _buildInfoRow(l10n.dimension, artwork.dimension),
                  _buildInfoRow(l10n.medium, artwork.medium),
                  if (artwork.createdAt != null)
                    _buildInfoRow(
                      l10n.createdAt,
                      '${artwork.createdAt!.day}/${artwork.createdAt!.month}/${artwork.createdAt!.year}',
                    ),
                ],
              ),
            ),
            if (artwork.sortedImages.isNotEmpty) ...[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  l10n.images,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 100,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  itemCount: artwork.sortedImages.length,
                  itemBuilder: (_, index) {
                    final image = artwork.sortedImages[index];
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: GestureDetector(
                        onTap: () => setState(() => _currentImageIndex = index),
                        child: Container(
                          width: 100,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: index == _currentImageIndex
                                  ? Theme.of(context).colorScheme.primary
                                  : Colors.transparent,
                              width: 2,
                            ),
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(6),
                            child: Stack(
                              fit: StackFit.expand,
                              children: [
                                CachedNetworkImage(
                                  imageUrl: provider.getImageUrl(
                                    image.thumbnailPath ?? image.storagePath,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                                Positioned(
                                  top: 4,
                                  left: 4,
                                  child: Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 4,
                                      vertical: 2,
                                    ),
                                    decoration: BoxDecoration(
                                      color: _getTagColor(image.tag),
                                      borderRadius: BorderRadius.circular(4),
                                    ),
                                    child: Text(
                                      _getTagLabel(l10n, image.tag),
                                      style: const TextStyle(
                                        color: Colors.white,
                                        fontSize: 8,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(height: 16),
            ],
          ],
        ),
      ),
    );
  }

  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
            ),
          ),
          Expanded(child: Text(value)),
        ],
      ),
    );
  }

  void _showFullImage(BuildContext context, ArtworkProvider provider, ArtworkImage image) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.black,
            iconTheme: const IconThemeData(color: Colors.white),
          ),
          body: InteractiveViewer(
            child: Center(
              child: CachedNetworkImage(
                imageUrl: provider.getImageUrl(image.storagePath),
                fit: BoxFit.contain,
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _confirmDelete(BuildContext context, Artwork artwork) {
    final l10n = AppLocalizations.of(context)!;
    
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(l10n.deleteArtwork),
        content: Text(l10n.confirmDelete),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.no),
          ),
          FilledButton(
            onPressed: () async {
              Navigator.pop(context);
              await context.read<ArtworkProvider>().deleteArtwork(artwork.id!);
              if (context.mounted) {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(l10n.artworkDeleted)),
                );
              }
            },
            child: Text(l10n.yes),
          ),
        ],
      ),
    );
  }

  Color _getTagColor(ImageTag tag) {
    return switch (tag) {
      ImageTag.main => Colors.blue,
      ImageTag.photoReference => Colors.orange,
      ImageTag.scan => Colors.green,
    };
  }

  String _getTagLabel(AppLocalizations l10n, ImageTag tag) {
    return switch (tag) {
      ImageTag.main => l10n.photo,
      ImageTag.photoReference => l10n.reference,
      ImageTag.scan => l10n.scan,
    };
  }
}
