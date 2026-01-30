import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:provider/provider.dart';
import '../../core/models/models.dart';
import '../../core/providers/providers.dart';

class ArtworkCard extends StatelessWidget {
  final Artwork artwork;
  final VoidCallback onTap;
  final VoidCallback? onLongPress;
  final bool isSelected;
  final bool isSelectionMode;

  const ArtworkCard({
    super.key,
    required this.artwork,
    required this.onTap,
    this.onLongPress,
    this.isSelected = false,
    this.isSelectionMode = false,
  });

  @override
  Widget build(BuildContext context) {
    final provider = context.read<ArtworkProvider>();
    final mainImage = artwork.mainImage;

    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        onLongPress: onLongPress,
        child: Stack(
          children: [
            Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: mainImage != null
                  ? CachedNetworkImage(
                      imageUrl: provider.getImageUrl(
                        mainImage.thumbnailPath ?? mainImage.storagePath,
                      ),
                      fit: BoxFit.cover,
                      width: double.infinity,
                      placeholder: (_, __) => const Center(
                        child: CircularProgressIndicator(),
                      ),
                      errorWidget: (_, __, ___) => const Center(
                        child: Icon(Icons.broken_image, size: 48),
                      ),
                    )
                  : Container(
                      color: Theme.of(context).colorScheme.surfaceContainerHighest,
                      child: const Center(
                        child: Icon(Icons.image, size: 48),
                      ),
                    ),
            ),
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    artwork.name,
                    style: Theme.of(context).textTheme.titleSmall,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '${artwork.medium} • ${artwork.dateDisplay}',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ],
        ),
        if (isSelectionMode)
          Positioned.fill(
            child: Container(
              color: isSelected
                  ? Theme.of(context).colorScheme.primary.withOpacity(0.3)
                  : Colors.transparent,
              child: isSelected
                  ? Align(
                      alignment: Alignment.topRight,
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: CircleAvatar(
                          radius: 12,
                          backgroundColor: Theme.of(context).colorScheme.primary,
                          child: const Icon(
                            Icons.check,
                            size: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    )
                  : null,
            ),
          ),
        ],
      ),
      ),
    );
  }
}
