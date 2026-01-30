import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/providers/providers.dart';
import '../../l10n/app_localizations.dart';
import '../widgets/widgets.dart';
import 'artwork_detail_screen.dart';
import 'artwork_form_screen.dart';
import 'settings_screen.dart';
import 'search_screen.dart';

class HomeScreen extends StatefulWidget {
  final String bucketName;
  
  const HomeScreen({
    super.key,
    required this.bucketName,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<ArtworkProvider>().loadArtworks();
    });
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.appTitle),
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const SearchScreen()),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.filter_list),
            onPressed: () => _showFilterSheet(context),
          ),
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () async {
              final result = await Navigator.push<bool>(
                context,
                MaterialPageRoute(
                  builder: (_) => SettingsScreen(bucketName: widget.bucketName),
                ),
              );
              if (result == true && mounted) {
                context.read<ArtworkProvider>().loadArtworks();
              }
            },
          ),
        ],
      ),
      body: Consumer<ArtworkProvider>(
        builder: (context, provider, _) {
          if (provider.isLoading) {
            return const Center(child: CircularProgressIndicator());
          }

          if (provider.error != null) {
            final isPaused = _isPausedError(provider.error!);
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      isPaused ? Icons.cloud_off : Icons.error_outline,
                      size: 64,
                      color: Theme.of(context).colorScheme.error,
                    ),
                    const SizedBox(height: 16),
                    Text(
                      isPaused ? l10n.databasePaused : l10n.error,
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    const SizedBox(height: 8),
                    Text(
                      isPaused ? l10n.databasePausedMessage : provider.error!,
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                    const SizedBox(height: 24),
                    FilledButton.icon(
                      onPressed: provider.loadArtworks,
                      icon: const Icon(Icons.refresh),
                      label: Text(l10n.retry),
                    ),
                  ],
                ),
              ),
            );
          }

          if (provider.artworks.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(Icons.palette_outlined, size: 64),
                  const SizedBox(height: 16),
                  Text(l10n.noArtworks),
                  const SizedBox(height: 8),
                  Text(
                    l10n.noArtworksHint,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ],
              ),
            );
          }

          return RefreshIndicator(
            onRefresh: provider.loadArtworks,
            child: LayoutBuilder(
              builder: (context, constraints) {
                // Responsive grid: 2 columns on mobile, more on wider screens
                final crossAxisCount = constraints.maxWidth > 1200
                    ? 6
                    : constraints.maxWidth > 900
                        ? 5
                        : constraints.maxWidth > 600
                            ? 4
                            : constraints.maxWidth > 400
                                ? 3
                                : 2;
                return GridView.builder(
                  padding: const EdgeInsets.all(8),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: crossAxisCount,
                    childAspectRatio: 0.75,
                    crossAxisSpacing: 8,
                    mainAxisSpacing: 8,
                  ),
                  itemCount: provider.artworks.length,
                  itemBuilder: (context, index) {
                    final artwork = provider.artworks[index];
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
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const ArtworkFormScreen()),
        ),
        child: const Icon(Icons.add),
      ),
    );
  }

  void _showFilterSheet(BuildContext context) {
    final provider = context.read<ArtworkProvider>();

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (_) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: FilterSortSheet(
          currentMediumFilter: provider.mediumFilter,
          currentYearFilter: provider.yearFilter,
          currentSortBy: provider.sortBy,
          currentAscending: provider.ascending,
          availableMedia: provider.media,
          availableYears: provider.years,
          onApply: (medium, year, sortBy, ascending) {
            provider.setMediumFilter(medium);
            provider.setYearFilter(year);
            provider.setSortBy(sortBy, ascending);
          },
        ),
      ),
    );
  }

  bool _isPausedError(String error) {
    final lower = error.toLowerCase();
    // Only detect as paused if we get specific Supabase paused indicators
    return lower.contains('project is paused') ||
           lower.contains('503') ||
           lower.contains('service unavailable');
  }
}
