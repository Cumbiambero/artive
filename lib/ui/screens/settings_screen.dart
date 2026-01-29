import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../core/providers/providers.dart';
import '../../core/services/setup_service.dart';
import '../../l10n/app_localizations.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.settings),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.language),
            title: Text(l10n.language),
            subtitle: Consumer<LocaleProvider>(
              builder: (_, provider, __) {
                final code = provider.locale?.languageCode ?? 
                    Localizations.localeOf(context).languageCode;
                return Text(provider.getLocaleName(code));
              },
            ),
            onTap: () => _showLanguageDialog(context),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.cloud_outlined),
            title: const Text('Cloud Connection'),
            subtitle: const Text('Reconfigure Supabase connection'),
            onTap: () => _showResetDialog(context),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: Text(l10n.about),
            subtitle: Text('${l10n.version} 1.0.0'),
          ),
        ],
      ),
    );
  }

  void _showLanguageDialog(BuildContext context) {
    final provider = context.read<LocaleProvider>();
    final currentCode = provider.locale?.languageCode ?? 
        Localizations.localeOf(context).languageCode;

    showDialog(
      context: context,
      builder: (_) => SimpleDialog(
        title: Text(AppLocalizations.of(context)!.language),
        children: LocaleProvider.supportedLocales.map((locale) {
          final code = locale.languageCode;
          return RadioListTile<String>(
            title: Text(provider.getLocaleName(code)),
            value: code,
            groupValue: currentCode,
            onChanged: (value) {
              provider.setLocale(Locale(value!));
              Navigator.pop(context);
            },
          );
        }).toList(),
      ),
    );
  }

  void _showResetDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Reset Cloud Connection'),
        content: const Text(
          'This will disconnect the app from your Supabase project. '
          'You will need to run the setup wizard again.\n\n'
          'Your data in Supabase will NOT be deleted.',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
          FilledButton(
            onPressed: () async {
              await SetupService.resetSetup();
              if (context.mounted) {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Please restart the app to reconfigure')),
                );
              }
            },
            child: const Text('Reset'),
          ),
        ],
      ),
    );
  }
}
