import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../core/models/models.dart';
import '../../core/repositories/repositories.dart';
import '../../l10n/app_localizations.dart';

class ArtistProfileScreen extends StatefulWidget {
  const ArtistProfileScreen({super.key});

  @override
  State<ArtistProfileScreen> createState() => _ArtistProfileScreenState();
}

class _ArtistProfileScreenState extends State<ArtistProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _bioController = TextEditingController();
  final _emailController = TextEditingController();
  final _instagramController = TextEditingController();
  final _websiteController = TextEditingController();
  final _phoneController = TextEditingController();
  final _facebookController = TextEditingController();
  final _locationController = TextEditingController();

  bool _isLoading = true;
  bool _isSaving = false;

  late final ArtistProfileRepository _repo;

  @override
  void initState() {
    super.initState();
    _repo = ArtistProfileRepository(Supabase.instance.client);
    _loadProfile();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _bioController.dispose();
    _emailController.dispose();
    _instagramController.dispose();
    _websiteController.dispose();
    _phoneController.dispose();
    _facebookController.dispose();
    _locationController.dispose();
    super.dispose();
  }

  Future<void> _loadProfile() async {
    try {
      final profile = await _repo.fetchProfile();
      if (mounted) {
        setState(() {
          _nameController.text = profile.name;
          _bioController.text = profile.bio ?? '';
          _emailController.text = profile.contactEmail ?? '';
          _instagramController.text = profile.contactInstagram ?? '';
          _websiteController.text = profile.contactWebsite ?? '';
          _phoneController.text = profile.contactPhone ?? '';
          _facebookController.text = profile.contactFacebook ?? '';
          _locationController.text = profile.contactLocation ?? '';
          _isLoading = false;
        });
      }
    } catch (_) {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  Future<void> _save() async {
    if (!_formKey.currentState!.validate()) return;
    final l10n = AppLocalizations.of(context)!;

    setState(() => _isSaving = true);
    try {
      final profile = ArtistProfile(
        name: _nameController.text.trim(),
        bio: _bioController.text.trim().isEmpty
            ? null
            : _bioController.text.trim(),
        contactEmail: _emailController.text.trim().isEmpty
            ? null
            : _emailController.text.trim(),
        contactInstagram: _instagramController.text.trim().isEmpty
            ? null
            : _instagramController.text.trim(),
        contactWebsite: _websiteController.text.trim().isEmpty
            ? null
            : _websiteController.text.trim(),
        contactPhone: _phoneController.text.trim().isEmpty
            ? null
            : _phoneController.text.trim(),
        contactFacebook: _facebookController.text.trim().isEmpty
            ? null
            : _facebookController.text.trim(),
        contactLocation: _locationController.text.trim().isEmpty
            ? null
            : _locationController.text.trim(),
      );
      await _repo.saveProfile(profile);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(l10n.profileSaved)),
        );
        Navigator.pop(context);
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('${AppLocalizations.of(context)!.error}: $e')),
        );
      }
    } finally {
      if (mounted) setState(() => _isSaving = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.artistProfile),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : Form(
              key: _formKey,
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [
                  TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      labelText: l10n.artistName,
                      border: const OutlineInputBorder(),
                      prefixIcon: const Icon(Icons.person_outline),
                    ),
                    validator: (v) =>
                        v?.trim().isEmpty == true ? l10n.requiredField : null,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _bioController,
                    decoration: InputDecoration(
                      labelText: l10n.biography,
                      hintText: l10n.biographyHint,
                      border: const OutlineInputBorder(),
                      alignLabelWithHint: true,
                    ),
                    maxLines: 6,
                  ),
                  const SizedBox(height: 24),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12),
                    child: Text(
                      l10n.contactInfo,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                    ),
                  ),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: l10n.emailAddress,
                      border: const OutlineInputBorder(),
                      prefixIcon: const Icon(Icons.email_outlined),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: _instagramController,
                    decoration: InputDecoration(
                      labelText: l10n.instagramHandle,
                      hintText: '@username',
                      border: const OutlineInputBorder(),
                      prefixIcon: const Icon(Icons.camera_alt_outlined),
                    ),
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: _websiteController,
                    decoration: InputDecoration(
                      labelText: l10n.websiteUrl,
                      hintText: 'https://',
                      border: const OutlineInputBorder(),
                      prefixIcon: const Icon(Icons.link),
                    ),
                    keyboardType: TextInputType.url,
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: _phoneController,
                    decoration: InputDecoration(
                      labelText: l10n.phoneNumber,
                      border: const OutlineInputBorder(),
                      prefixIcon: const Icon(Icons.phone_outlined),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: _facebookController,
                    decoration: InputDecoration(
                      labelText: l10n.facebook,
                      hintText: 'https://facebook.com/...',
                      border: const OutlineInputBorder(),
                      prefixIcon: const Icon(Icons.facebook),
                    ),
                    keyboardType: TextInputType.url,
                  ),
                  const SizedBox(height: 12),
                  TextFormField(
                    controller: _locationController,
                    decoration: InputDecoration(
                      labelText: l10n.location,
                      hintText: l10n.locationHint,
                      border: const OutlineInputBorder(),
                      prefixIcon: const Icon(Icons.location_on_outlined),
                    ),
                  ),
                  const SizedBox(height: 24),
                  FilledButton(
                    onPressed: _isSaving ? null : _save,
                    child: _isSaving
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
}
