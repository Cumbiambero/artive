import 'dart:io';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import '../../core/services/backup_service.dart';
import '../../l10n/app_localizations.dart';

class BackupRestoreScreen extends StatefulWidget {
  final String bucketName;
  
  const BackupRestoreScreen({
    super.key,
    required this.bucketName,
  });

  @override
  State<BackupRestoreScreen> createState() => _BackupRestoreScreenState();
}

class _BackupRestoreScreenState extends State<BackupRestoreScreen> {
  bool _isProcessing = false;
  String _status = '';
  double _progress = 0.0;
  String? _error;

  late final BackupService _backupService;

  @override
  void initState() {
    super.initState();
    _backupService = BackupService(
      Supabase.instance.client,
      widget.bucketName,
    );
  }

  Future<void> _createBackup() async {
    setState(() {
      _isProcessing = true;
      _status = '';
      _progress = 0.0;
      _error = null;
    });

    try {
      final backupData = await _backupService.createBackup(
        onProgress: (status, progress) {
          if (mounted) {
            setState(() {
              _status = status;
              _progress = progress;
            });
          }
        },
      );

      // Save to temp file
      final tempDir = await getTemporaryDirectory();
      final fileName = BackupService.getBackupFileName();
      final file = File('${tempDir.path}/$fileName');
      await file.writeAsBytes(backupData);

      if (!mounted) return;

      // Share the file
      await Share.shareXFiles(
        [XFile(file.path)],
        subject: 'Artive Backup',
      );

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(AppLocalizations.of(context)!.backupCreated)),
        );
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _error = e.toString();
        });
      }
    } finally {
      if (mounted) {
        setState(() {
          _isProcessing = false;
        });
      }
    }
  }

  Future<void> _restoreBackup() async {
    final l10n = AppLocalizations.of(context)!;
    
    // Show confirmation dialog
    final clearExisting = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(l10n.restoreBackup),
        content: Text(l10n.restoreBackupConfirm),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(l10n.restoreMerge),
          ),
          ElevatedButton(
            onPressed: () => Navigator.pop(context, true),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.orange,
            ),
            child: Text(l10n.restoreReplace),
          ),
        ],
      ),
    );

    if (clearExisting == null) return;

    // Pick backup file
    final result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['zip'],
    );

    if (result == null || result.files.isEmpty) return;

    final file = File(result.files.single.path!);
    final backupData = await file.readAsBytes();

    setState(() {
      _isProcessing = true;
      _status = '';
      _progress = 0.0;
      _error = null;
    });

    try {
      final restoredCount = await _backupService.restoreBackup(
        backupData,
        clearExisting: clearExisting,
        onProgress: (status, progress) {
          if (mounted) {
            setState(() {
              _status = status;
              _progress = progress;
            });
          }
        },
      );

      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(l10n.restoreComplete(restoredCount)),
          ),
        );
        Navigator.pop(context, true); // Return true to indicate data changed
      }
    } catch (e) {
      if (mounted) {
        setState(() {
          _error = e.toString();
        });
      }
    } finally {
      if (mounted) {
        setState(() {
          _isProcessing = false;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.backupRestore),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.backup, color: theme.colorScheme.primary),
                        const SizedBox(width: 12),
                        Text(
                          l10n.createBackup,
                          style: theme.textTheme.titleMedium,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      l10n.createBackupDescription,
                      style: theme.textTheme.bodySmall,
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton.icon(
                        onPressed: _isProcessing ? null : _createBackup,
                        icon: const Icon(Icons.cloud_download),
                        label: Text(l10n.createBackup),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 16),
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(Icons.restore, color: theme.colorScheme.secondary),
                        const SizedBox(width: 12),
                        Text(
                          l10n.restoreBackup,
                          style: theme.textTheme.titleMedium,
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Text(
                      l10n.restoreBackupDescription,
                      style: theme.textTheme.bodySmall,
                    ),
                    const SizedBox(height: 16),
                    SizedBox(
                      width: double.infinity,
                      child: OutlinedButton.icon(
                        onPressed: _isProcessing ? null : _restoreBackup,
                        icon: const Icon(Icons.cloud_upload),
                        label: Text(l10n.restoreBackup),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            if (_isProcessing) ...[
              const SizedBox(height: 24),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      LinearProgressIndicator(value: _progress),
                      const SizedBox(height: 12),
                      Text(_status, style: theme.textTheme.bodySmall),
                    ],
                  ),
                ),
              ),
            ],
            if (_error != null) ...[
              const SizedBox(height: 16),
              Card(
                color: theme.colorScheme.errorContainer,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    children: [
                      Icon(Icons.error, color: theme.colorScheme.error),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          _error!,
                          style: TextStyle(color: theme.colorScheme.error),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
            const Spacer(),
            Text(
              l10n.backupNote,
              style: theme.textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.outline,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
