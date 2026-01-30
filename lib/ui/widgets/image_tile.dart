import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:provider/provider.dart';
import '../../core/models/models.dart';
import '../../core/providers/providers.dart';
import '../../l10n/app_localizations.dart';

class ImageTile extends StatelessWidget {
  final ArtworkImage image;
  final VoidCallback onDelete;
  final Function(ImageTag) onTagChanged;

  const ImageTile({
    super.key,
    required this.image,
    required this.onDelete,
    required this.onTagChanged,
  });

  @override
  Widget build(BuildContext context) {
    final provider = context.read<ArtworkProvider>();
    final l10n = AppLocalizations.of(context)!;

    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: CachedNetworkImage(
            imageUrl: provider.getImageUrl(
              image.thumbnailPath ?? image.storagePath,
            ),
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
            placeholder: (_, __) => const Center(
              child: CircularProgressIndicator(),
            ),
            errorWidget: (_, __, ___) => const Center(
              child: Icon(Icons.broken_image),
            ),
          ),
        ),
        Positioned(
          top: 4,
          left: 4,
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
            decoration: BoxDecoration(
              color: _getTagColor(image.tag),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Text(
              _getTagLabel(l10n, image.tag),
              style: const TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        Positioned(
          top: 4,
          right: 4,
          child: PopupMenuButton<String>(
            icon: Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.black54,
                borderRadius: BorderRadius.circular(4),
              ),
              child: const Icon(Icons.more_vert, color: Colors.white, size: 16),
            ),
            itemBuilder: (_) => [
              PopupMenuItem(
                value: 'main',
                child: Text(l10n.photo),
              ),
              PopupMenuItem(
                value: 'photo_reference',
                child: Text(l10n.reference),
              ),
              PopupMenuItem(
                value: 'scan',
                child: Text(l10n.scan),
              ),
              const PopupMenuDivider(),
              PopupMenuItem(
                value: 'delete',
                child: Text(
                  l10n.delete,
                  style: const TextStyle(color: Colors.red),
                ),
              ),
            ],
            onSelected: (value) {
              if (value == 'delete') {
                onDelete();
              } else {
                onTagChanged(ImageTag.fromString(value));
              }
            },
          ),
        ),
      ],
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
