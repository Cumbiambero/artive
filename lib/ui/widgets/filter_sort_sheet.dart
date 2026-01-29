import 'package:flutter/material.dart';
import '../../l10n/app_localizations.dart';

class FilterSortSheet extends StatefulWidget {
  final String? currentMediumFilter;
  final int? currentYearFilter;
  final String currentSortBy;
  final bool currentAscending;
  final List<String> availableMedia;
  final List<int> availableYears;
  final Function(String?, int?, String, bool) onApply;

  const FilterSortSheet({
    super.key,
    this.currentMediumFilter,
    this.currentYearFilter,
    required this.currentSortBy,
    required this.currentAscending,
    required this.availableMedia,
    required this.availableYears,
    required this.onApply,
  });

  @override
  State<FilterSortSheet> createState() => _FilterSortSheetState();
}

class _FilterSortSheetState extends State<FilterSortSheet> {
  late String? _mediumFilter;
  late int? _yearFilter;
  late String _sortBy;
  late bool _ascending;

  @override
  void initState() {
    super.initState();
    _mediumFilter = widget.currentMediumFilter;
    _yearFilter = widget.currentYearFilter;
    _sortBy = widget.currentSortBy;
    _ascending = widget.currentAscending;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Container(
      padding: const EdgeInsets.all(16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            l10n.filterByMedium,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          DropdownButtonFormField<String?>(
            value: _mediumFilter,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              hintText: l10n.allMedia,
            ),
            items: [
              DropdownMenuItem(value: null, child: Text(l10n.allMedia)),
              ...widget.availableMedia.map(
                (m) => DropdownMenuItem(value: m, child: Text(m)),
              ),
            ],
            onChanged: (v) => setState(() => _mediumFilter = v),
          ),
          const SizedBox(height: 16),
          Text(
            l10n.filterByYear,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          DropdownButtonFormField<int?>(
            value: _yearFilter,
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
              hintText: l10n.allYears,
            ),
            items: [
              DropdownMenuItem(value: null, child: Text(l10n.allYears)),
              ...widget.availableYears.map(
                (y) => DropdownMenuItem(value: y, child: Text(y.toString())),
              ),
            ],
            onChanged: (v) => setState(() => _yearFilter = v),
          ),
          const SizedBox(height: 16),
          Text(
            l10n.sortBy,
            style: Theme.of(context).textTheme.titleMedium,
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              Expanded(
                child: DropdownButtonFormField<String>(
                  value: _sortBy,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  ),
                  items: [
                    DropdownMenuItem(value: 'created', child: Text(l10n.sortByCreated)),
                    DropdownMenuItem(value: 'name', child: Text(l10n.sortByName)),
                    DropdownMenuItem(value: 'date', child: Text(l10n.sortByDate)),
                  ],
                  onChanged: (v) => setState(() => _sortBy = v!),
                ),
              ),
              const SizedBox(width: 8),
              IconButton.filled(
                onPressed: () => setState(() => _ascending = !_ascending),
                icon: Icon(_ascending ? Icons.arrow_upward : Icons.arrow_downward),
                tooltip: _ascending ? l10n.ascending : l10n.descending,
              ),
            ],
          ),
          const SizedBox(height: 24),
          SizedBox(
            width: double.infinity,
            child: FilledButton(
              onPressed: () {
                widget.onApply(_mediumFilter, _yearFilter, _sortBy, _ascending);
                Navigator.pop(context);
              },
              child: Text(l10n.save),
            ),
          ),
        ],
      ),
    );
  }
}
