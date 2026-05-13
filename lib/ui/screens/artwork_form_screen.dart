import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import '../../core/models/models.dart';
import '../../core/providers/providers.dart';
import '../../l10n/app_localizations.dart';
import '../widgets/widgets.dart';

class ArtworkFormScreen extends StatefulWidget {
  final Artwork? artwork;

  const ArtworkFormScreen({super.key, this.artwork});

  @override
  State<ArtworkFormScreen> createState() => _ArtworkFormScreenState();
}

class _ArtworkFormScreenState extends State<ArtworkFormScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _descriptionController = TextEditingController();
  final _monthController = TextEditingController();
  final _yearController = TextEditingController();
  final _dimensionController = TextEditingController();
  final _mediumController = TextEditingController();

  bool _isLoading = false;
  bool _isStudy = false;
  bool _isPublic = false;
  bool _isForSale = false;
  String _priceCurrency = 'EUR';
  final _priceAmountController = TextEditingController();
  final _imagePicker = ImagePicker();

  bool get isEditing => widget.artwork != null;

  @override
  void initState() {
    super.initState();
    if (widget.artwork != null) {
      _nameController.text = widget.artwork!.name;
      _descriptionController.text = widget.artwork!.description ?? '';
      _monthController.text = widget.artwork!.dateMonth?.toString() ?? '';
      _yearController.text = widget.artwork!.dateYear?.toString() ?? '';
      _dimensionController.text = widget.artwork!.dimension;
      _mediumController.text = widget.artwork!.medium;
      _isStudy = widget.artwork!.isStudy;
      _isPublic = widget.artwork!.isPublic;
      _isForSale = widget.artwork!.isForSale;
      _priceCurrency = widget.artwork!.priceCurrency ?? 'EUR';
      _priceAmountController.text =
          widget.artwork!.priceAmount?.toString() ?? '';
    }
  }

  @override
  void dispose() {
    _nameController.dispose();
    _descriptionController.dispose();
    _monthController.dispose();
    _yearController.dispose();
    _dimensionController.dispose();
    _mediumController.dispose();
    _priceAmountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    // Watch provider to get updated artwork with images
    final provider = context.watch<ArtworkProvider>();
    final currentArtwork = isEditing
        ? provider.artworks.firstWhere(
            (a) => a.id == widget.artwork!.id,
            orElse: () => widget.artwork!,
          )
        : null;

    return Scaffold(
      appBar: AppBar(
        title: Text(isEditing ? l10n.editArtwork : l10n.addArtwork),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            TextFormField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: l10n.name,
                border: const OutlineInputBorder(),
              ),
              validator: (v) => v?.isEmpty == true ? l10n.requiredField : null,
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _descriptionController,
              decoration: InputDecoration(
                labelText: l10n.descriptionOptional,
                border: const OutlineInputBorder(),
              ),
              maxLines: 3,
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _monthController,
                    decoration: InputDecoration(
                      labelText: l10n.month,
                      border: const OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    validator: (v) {
                      if (v?.isEmpty == true) return null;
                      final month = int.tryParse(v!);
                      if (month == null || month < 1 || month > 12) {
                        return l10n.invalidMonth;
                      }
                      return null;
                    },
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: TextFormField(
                    controller: _yearController,
                    decoration: InputDecoration(
                      labelText: l10n.year,
                      border: const OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.number,
                    inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                    validator: (v) {
                      if (v?.isEmpty == true) return null;
                      final year = int.tryParse(v!);
                      if (year == null || year < 1000 || year > 9999) {
                        return l10n.invalidYear;
                      }
                      return null;
                    },
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            MediumAutocompleteField(
              labelText: l10n.dimension,
              hintText: l10n.dimensionHint,
              options: context.watch<ArtworkProvider>().dimensions,
              initialValue: widget.artwork?.dimension,
              controller: _dimensionController,
              onSelected: (value) {
                if (value != null) {
                  _dimensionController.text = value;
                }
              },
              validator: (v) => v?.isEmpty == true ? l10n.requiredField : null,
            ),
            const SizedBox(height: 16),
            MediumAutocompleteField(
              labelText: l10n.medium,
              hintText: l10n.mediumHint,
              options: context.watch<ArtworkProvider>().media,
              initialValue: widget.artwork?.medium,
              controller: _mediumController,
              onSelected: (value) {
                if (value != null) {
                  _mediumController.text = value;
                }
              },
              validator: (v) => v?.isEmpty == true ? l10n.requiredField : null,
            ),
            const SizedBox(height: 16),
            CheckboxListTile(
              value: _isStudy,
              onChanged: (value) => setState(() => _isStudy = value ?? false),
              title: Text(l10n.isStudy),
              controlAffinity: ListTileControlAffinity.leading,
              contentPadding: EdgeInsets.zero,
            ),
            const SizedBox(height: 8),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8),
              child: Text(
                l10n.publicWebsiteSection,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: Theme.of(context).colorScheme.primary,
                    ),
              ),
            ),
            SwitchListTile(
              value: _isPublic,
              onChanged: (value) => setState(() {
                _isPublic = value;
                if (!value) _isForSale = false;
              }),
              title: Text(l10n.isPublic),
              subtitle: Text(l10n.isPublicSubtitle),
              contentPadding: EdgeInsets.zero,
            ),
            SwitchListTile(
              value: _isForSale,
              onChanged: _isPublic
                  ? (value) => setState(() => _isForSale = value)
                  : null,
              title: Text(l10n.forSale),
              subtitle: Text(l10n.forSaleSubtitle),
              contentPadding: EdgeInsets.zero,
            ),
            if (_isForSale) ...[
              const SizedBox(height: 8),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DropdownMenu<String>(
                    initialSelection: _priceCurrency,
                    label: Text(l10n.currency),
                    width: 120,
                    onSelected: (value) {
                      if (value != null) setState(() => _priceCurrency = value);
                    },
                    dropdownMenuEntries: const [
                      DropdownMenuEntry(value: 'USD', label: 'USD'),
                      DropdownMenuEntry(value: 'EUR', label: 'EUR'),
                      DropdownMenuEntry(value: 'GBP', label: 'GBP'),
                      DropdownMenuEntry(value: 'CHF', label: 'CHF'),
                      DropdownMenuEntry(value: 'JPY', label: 'JPY'),
                      DropdownMenuEntry(value: 'CNY', label: 'CNY'),
                      DropdownMenuEntry(value: 'CAD', label: 'CAD'),
                      DropdownMenuEntry(value: 'AUD', label: 'AUD'),
                      DropdownMenuEntry(value: 'BRL', label: 'BRL'),
                      DropdownMenuEntry(value: 'INR', label: 'INR'),
                      DropdownMenuEntry(value: 'MXN', label: 'MXN'),
                      DropdownMenuEntry(value: 'KRW', label: 'KRW'),
                      DropdownMenuEntry(value: 'SEK', label: 'SEK'),
                      DropdownMenuEntry(value: 'NOK', label: 'NOK'),
                      DropdownMenuEntry(value: 'PLN', label: 'PLN'),
                    ],
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: TextFormField(
                      controller: _priceAmountController,
                      decoration: InputDecoration(
                        labelText: l10n.price,
                        border: const OutlineInputBorder(),
                      ),
                      keyboardType: const TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                      inputFormatters: [
                        FilteringTextInputFormatter.allow(
                          RegExp(r'^\d*\.?\d{0,2}'),
                        ),
                      ],
                      validator: (v) {
                        if (_isForSale && (v == null || v.isEmpty)) {
                          return l10n.requiredField;
                        }
                        if (v != null &&
                            v.isNotEmpty &&
                            double.tryParse(v) == null) {
                          return l10n.invalidPrice;
                        }
                        return null;
                      },
                    ),
                  ),
                ],
              ),
            ],
            const Divider(),
            if (isEditing) ...[
              const SizedBox(height: 24),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    l10n.images,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  IconButton(
                    icon: const Icon(Icons.add_photo_alternate),
                    onPressed: () => _addImage(context),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              if (currentArtwork!.images.isNotEmpty)
                SizedBox(
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: currentArtwork.sortedImages.length,
                    itemBuilder: (_, index) {
                      final image = currentArtwork.sortedImages[index];
                      return Padding(
                        padding: const EdgeInsets.only(right: 8),
                        child: SizedBox(
                          width: 120,
                          child: ImageTile(
                            image: image,
                            onDelete: () => _deleteImage(image),
                            onTagChanged: (tag) => _updateImageTag(image, tag),
                          ),
                        ),
                      );
                    },
                  ),
                ),
            ],
            const SizedBox(height: 24),
            FilledButton(
              onPressed: _isLoading ? null : _save,
              child: _isLoading
                  ? const SizedBox(
                      width: 20,
                      height: 20,
                      child: CircularProgressIndicator(strokeWidth: 2),
                    )
                  : Text(l10n.save),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;

    setState(() => _isLoading = true);

    try {
      final provider = context.read<ArtworkProvider>();
      final l10n = AppLocalizations.of(context)!;

      final artwork = Artwork(
        id: widget.artwork?.id,
        name: _nameController.text,
        description: _descriptionController.text.isEmpty
            ? null
            : _descriptionController.text,
        dateMonth: int.tryParse(_monthController.text),
        dateYear: int.tryParse(_yearController.text),
        dimension: _dimensionController.text,
        medium: _mediumController.text,
        isStudy: _isStudy,
        isPublic: _isPublic,
        isForSale: _isForSale,
        priceAmount: _isForSale
            ? double.tryParse(_priceAmountController.text)
            : null,
        priceCurrency: _isForSale ? _priceCurrency : null,
      );

      if (isEditing) {
        await provider.updateArtwork(artwork);
      } else {
        final created = await provider.createArtwork(artwork);
        if (mounted) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (_) => ArtworkFormScreen(artwork: created),
            ),
          );
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(l10n.artworkSaved)));
          return;
        }
      }

      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.artworkSaved)));
        Navigator.pop(context);
      }
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  Future<void> _addImage(BuildContext context) async {
    final l10n = AppLocalizations.of(context)!;

    // macOS doesn't support camera capture via image_picker
    final isMacOS = !kIsWeb && Platform.isMacOS;

    final source = await showModalBottomSheet<ImageSource>(
      context: context,
      builder: (_) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: const Icon(Icons.photo_library),
            title: Text(l10n.gallery),
            onTap: () => Navigator.pop(context, ImageSource.gallery),
          ),
          if (!isMacOS)
            ListTile(
              leading: const Icon(Icons.camera_alt),
              title: Text(l10n.camera),
              onTap: () => Navigator.pop(context, ImageSource.camera),
            ),
        ],
      ),
    );

    if (source == null) return;

    final file = await _imagePicker.pickImage(source: source);
    if (file == null) return;

    final tag = await showModalBottomSheet<ImageTag>(
      context: context,
      builder: (_) => Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              l10n.selectImageTag,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          ListTile(
            leading: const Icon(Icons.star, color: Colors.blue),
            title: Text(l10n.photo),
            onTap: () => Navigator.pop(context, ImageTag.main),
          ),
          ListTile(
            leading: const Icon(Icons.photo_camera, color: Colors.orange),
            title: Text(l10n.reference),
            onTap: () => Navigator.pop(context, ImageTag.photoReference),
          ),
          ListTile(
            leading: const Icon(Icons.scanner, color: Colors.green),
            title: Text(l10n.scan),
            onTap: () => Navigator.pop(context, ImageTag.scan),
          ),
        ],
      ),
    );

    if (tag == null) return;

    setState(() => _isLoading = true);
    try {
      final provider = context.read<ArtworkProvider>();
      await provider.addImage(widget.artwork!.id!, file, tag);
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.imageUploaded)));
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(
          context,
        ).showSnackBar(SnackBar(content: Text(l10n.imageFailed)));
      }
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  Future<void> _deleteImage(ArtworkImage image) async {
    final l10n = AppLocalizations.of(context)!;

    final confirm = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(l10n.delete),
        content: Text(l10n.confirmDeleteImage),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(l10n.no),
          ),
          FilledButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(l10n.yes),
          ),
        ],
      ),
    );

    if (confirm != true) return;

    setState(() => _isLoading = true);
    try {
      await context.read<ArtworkProvider>().deleteImage(image);
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  Future<void> _updateImageTag(ArtworkImage image, ImageTag tag) async {
    setState(() => _isLoading = true);
    try {
      await context.read<ArtworkProvider>().updateImageTag(image, tag);
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }
}
