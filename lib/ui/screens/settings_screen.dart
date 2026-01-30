import 'package:flutter/material.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:provider/provider.dart';
import '../../core/providers/providers.dart';
import '../../core/services/setup_service.dart';
import '../../l10n/app_localizations.dart';
import 'backup_restore_screen.dart';

class SettingsScreen extends StatefulWidget {
  final String bucketName;
  
  const SettingsScreen({
    super.key,
    required this.bucketName,
  });

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  String _version = 'Loading...';

  @override
  void initState() {
    super.initState();
    _loadVersion();
  }

  Future<void> _loadVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      _version = packageInfo.version;
    });
  }

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
            title: Text(l10n.cloudConnection),
            subtitle: Text(l10n.cloudConnectionSubtitle),
            onTap: () => _showResetDialog(context),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.backup),
            title: Text(l10n.backupRestore),
            subtitle: Text(l10n.backupRestoreSubtitle),
            onTap: () => _openBackupRestore(context),
          ),
          const Divider(),
          ListTile(
            leading: const Icon(Icons.info_outline),
            title: Text(l10n.about),
            subtitle: Text('${l10n.version} $_version'),
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
    final l10n = AppLocalizations.of(context)!;
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(l10n.resetCloudConnection),
        content: Text(l10n.resetCloudConnectionMessage),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
          FilledButton(
            onPressed: () async {
              await SetupService.resetSetup();
              if (context.mounted) {
                Navigator.pop(context);
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text(l10n.restartToReconfigure)),
                );
              }
            },
            child: Text(l10n.reset),
          ),
        ],
      ),
    );
  }

  Future<void> _openBackupRestore(BuildContext context) async {
    final result = await Navigator.push<bool>(
      context,
      MaterialPageRoute(
        builder: (context) => BackupRestoreScreen(
          bucketName: widget.bucketName,
        ),
      ),
    );
    
    // If data was restored, we might want to refresh the parent
    if (result == true && mounted) {
      // Pop back to home to refresh
      Navigator.pop(context, true);
    }
  }
}
