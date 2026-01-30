import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../core/services/setup_service.dart';
import '../../l10n/app_localizations.dart';

class SetupWizardScreen extends StatefulWidget {
  final VoidCallback onSetupComplete;

  const SetupWizardScreen({super.key, required this.onSetupComplete});

  @override
  State<SetupWizardScreen> createState() => _SetupWizardScreenState();
}

class _SetupWizardScreenState extends State<SetupWizardScreen> {
  final _pageController = PageController();
  int _currentStep = 0;
  final _urlController = TextEditingController();
  final _anonKeyController = TextEditingController();
  bool _isValidating = false;
  bool _isSettingUp = false;
  String? _error;
  final _steps = ['Welcome', 'Create Project', 'Get Credentials', 'Configure', 'Database', 'Storage', 'Complete'];

  @override
  void dispose() {
    _pageController.dispose();
    _urlController.dispose();
    _anonKeyController.dispose();
    super.dispose();
  }

  void _nextStep() {
    if (_currentStep < _steps.length - 1) {
      setState(() {
        _currentStep++;
        _error = null;
      });
      _pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }

  void _previousStep() {
    if (_currentStep > 0) {
      setState(() {
        _currentStep--;
        _error = null;
      });
      _pageController.previousPage(duration: const Duration(milliseconds: 300), curve: Curves.easeInOut);
    }
  }

  Future<void> _launchUrl(String url) async {
    final uri = Uri.parse(url);
    try {
      final launched = await launchUrl(uri, mode: LaunchMode.externalApplication);
      if (!launched) {
        _showUrlFallback(url);
      }
    } catch (_) {
      _showUrlFallback(url);
    }
  }

  void _showUrlFallback(String url) {
    final l10n = AppLocalizations.of(context)!;
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: Text(l10n.openInBrowser),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(l10n.couldNotOpenBrowser),
            const SizedBox(height: 16),
            SelectableText(url, style: const TextStyle(fontWeight: FontWeight.bold)),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Clipboard.setData(ClipboardData(text: url));
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(l10n.urlCopied)),
              );
            },
            child: Text('${l10n.copy} URL'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text(l10n.close),
          ),
        ],
      ),
    );
  }

  Future<void> _validateAndSaveCredentials() async {
    final url = _urlController.text.trim();
    final anonKey = _anonKeyController.text.trim();

    if (url.isEmpty || anonKey.isEmpty) {
      setState(() => _error = 'Please fill in both fields');
      return;
    }

    if (!url.startsWith('https://') || !url.contains('.supabase.co')) {
      setState(() => _error = 'Invalid Supabase URL format');
      return;
    }

    setState(() {
      _isValidating = true;
      _error = null;
    });

    final result = await SetupService.validateConnection(url, anonKey);

    if (result.success) {
      await SetupService.saveCredentials(url, anonKey);
      _nextStep();
    } else {
      setState(() => _error = 'Connection failed: ${result.error}');
    }

    setState(() => _isValidating = false);
  }

  Future<void> _setupDatabase() async {
    setState(() {
      _isSettingUp = true;
      _error = null;
    });

    final hasAccess = await SetupService.testTableAccess();
    
    if (hasAccess) {
      _nextStep();
    } else {
      setState(() => _error = 'database_setup_needed');
    }

    setState(() => _isSettingUp = false);
  }

  Future<void> _setupStorage() async {
    setState(() {
      _isSettingUp = true;
      _error = null;
    });

    final result = await SetupService.ensureStorageBucket();

    if (result.exists || result.created) {
      await SetupService.markSetupComplete();
      _nextStep();
    } else if (result.error == 'bucket_permission_denied') {
      setState(() => _error = 'storage_manual_setup');
    } else {
      setState(() => _error = result.error);
    }

    setState(() => _isSettingUp = false);
  }

  Future<void> _skipStorageAndComplete() async {
    await SetupService.markSetupComplete();
    _nextStep();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.setupTitle),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4),
          child: LinearProgressIndicator(
            value: (_currentStep + 1) / _steps.length,
            backgroundColor: Theme.of(context).colorScheme.surfaceContainerHighest,
          ),
        ),
      ),
      body: PageView(
        controller: _pageController,
        physics: const NeverScrollableScrollPhysics(),
        children: [
          _buildWelcomePage(),
          _buildCreateProjectPage(),
          _buildGetCredentialsPage(),
          _buildConfigurePage(),
          _buildDatabasePage(),
          _buildStoragePage(),
          _buildCompletePage(),
        ],
      ),
    );
  }

  Widget _buildPageContainer({required List<Widget> children, Widget? bottomButton}) {
    return Column(
      children: [
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: children,
            ),
          ),
        ),
        if (bottomButton != null)
          Padding(
            padding: const EdgeInsets.all(24),
            child: bottomButton,
          ),
      ],
    );
  }

  Widget _buildWelcomePage() {
    final l10n = AppLocalizations.of(context)!;
    return _buildPageContainer(
      children: [
                Icon(Icons.palette, size: 80, color: Theme.of(context).colorScheme.primary),
        const SizedBox(height: 24),
        Text(l10n.setupWelcome, style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 16),
        Text(
          l10n.setupWelcomeDescription,
          style: const TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 24),
        _buildInfoCard(
          icon: Icons.cloud_outlined,
          title: l10n.setupWhatIsSupabase,
          content: l10n.setupWhatIsSupabaseContent,
        ),
        const SizedBox(height: 16),
        _buildInfoCard(
          icon: Icons.lock_outlined,
          title: l10n.setupYourData,
          content: l10n.setupYourDataContent,
        ),
      ],
      bottomButton: SizedBox(
        width: double.infinity,
        child: FilledButton(
          onPressed: _nextStep,
          child: Text(l10n.setupGetStarted),
        ),
      ),
    );
  }

  Widget _buildCreateProjectPage() {
    final l10n = AppLocalizations.of(context)!;
    return _buildPageContainer(
      children: [
        Text(l10n.setupStep1Title, style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 24),
        _buildNumberedStep(1, l10n.setupStep1_1),
        const SizedBox(height: 8),
        OutlinedButton.icon(
          onPressed: () => _launchUrl('https://supabase.com'),
          icon: const Icon(Icons.open_in_new),
          label: Text(l10n.setupOpenSupabase),
        ),
        const SizedBox(height: 24),
        _buildNumberedStep(2, l10n.setupStep1_2),
        const SizedBox(height: 16),
        _buildNumberedStep(3, l10n.setupStep1_3),
        const SizedBox(height: 16),
        _buildNumberedStep(4, l10n.setupStep1_4),
        const SizedBox(height: 16),
        _buildNumberedStep(5, l10n.setupStep1_5),
        const SizedBox(height: 16),
        _buildNumberedStep(6, l10n.setupStep1_6),
        const SizedBox(height: 24),
        _buildInfoCard(
          icon: Icons.info_outlined,
          title: l10n.setupFreeTier,
          content: l10n.setupFreeTierContent,
        ),
      ],
      bottomButton: Row(
        children: [
          TextButton(onPressed: _previousStep, child: Text(l10n.back)),
          const Spacer(),
          FilledButton(onPressed: _nextStep, child: Text(l10n.setupProjectCreated)),
        ],
      ),
    );
  }

  Widget _buildGetCredentialsPage() {
    final l10n = AppLocalizations.of(context)!;
    return _buildPageContainer(
      children: [
        Text(l10n.setupStep2Title, style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 24),
        _buildNumberedStep(1, l10n.setupStep2_1),
        const SizedBox(height: 16),
        _buildNumberedStep(2, l10n.setupStep2_2),
        const SizedBox(height: 16),
        _buildNumberedStep(3, l10n.setupStep2_3),
        const SizedBox(height: 16),
        _buildNumberedStep(4, l10n.setupStep2_4),
        const SizedBox(height: 16),
        _buildInfoCard(
          icon: Icons.info_outlined,
          title: l10n.setupAboutApiKeys,
          content: l10n.setupAboutApiKeysContent,
        ),
        const SizedBox(height: 24),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.tertiaryContainer.withOpacity(0.3),
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Theme.of(context).colorScheme.tertiary.withOpacity(0.3)),
          ),
          child: Row(
            children: [
              Icon(Icons.lightbulb_outline, color: Theme.of(context).colorScheme.tertiary),
              const SizedBox(width: 12),
              Expanded(
                child: Text(
                  l10n.setupCredentialsTip,
                  style: const TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ],
      bottomButton: Row(
        children: [
          TextButton(onPressed: _previousStep, child: Text(l10n.back)),
          const Spacer(),
          FilledButton(onPressed: _nextStep, child: Text(l10n.setupIHaveCredentials)),
        ],
      ),
    );
  }

  Widget _buildConfigurePage() {
    final l10n = AppLocalizations.of(context)!;
    return _buildPageContainer(
      children: [
        Text(l10n.setupStep3Title, style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 24),
        TextField(
          controller: _urlController,
          decoration: InputDecoration(
            labelText: l10n.setupProjectUrl,
            hintText: 'https://xxxxx.supabase.co',
            border: const OutlineInputBorder(),
            prefixIcon: const Icon(Icons.link),
          ),
          keyboardType: TextInputType.url,
        ),
        const SizedBox(height: 16),
        TextField(
          controller: _anonKeyController,
          decoration: InputDecoration(
            labelText: l10n.setupAnonKey,
            hintText: 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...',
            border: const OutlineInputBorder(),
            prefixIcon: const Icon(Icons.key),
            suffixIcon: IconButton(
              icon: const Icon(Icons.paste),
              onPressed: () async {
                final data = await Clipboard.getData('text/plain');
                if (data?.text != null) {
                  _anonKeyController.text = data!.text!;
                }
              },
              tooltip: 'Paste from clipboard',
            ),
          ),
          maxLines: 3,
        ),
        if (_error != null) ...[
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.errorContainer,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Theme.of(context).colorScheme.error.withOpacity(0.3)),
            ),
            child: Row(
              children: [
                Icon(Icons.error_outline, color: Theme.of(context).colorScheme.error),
                const SizedBox(width: 8),
                Expanded(child: Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.onErrorContainer))),
              ],
            ),
          ),
        ],
      ],
      bottomButton: Row(
        children: [
          TextButton(onPressed: _previousStep, child: Text(l10n.back)),
          const Spacer(),
          FilledButton(
            onPressed: _isValidating ? null : _validateAndSaveCredentials,
            child: _isValidating
                ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2))
                : Text(l10n.setupValidateAndContinue),
          ),
        ],
      ),
    );
  }

  Widget _buildDatabasePage() {
    final l10n = AppLocalizations.of(context)!;
    final needsManualSetup = _error == 'database_setup_needed';

    return _buildPageContainer(
      children: [
        Text(l10n.setupStep4Title, style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 24),
        if (needsManualSetup) ...[
          _buildInfoCard(
            icon: Icons.info_outlined,
            title: l10n.setupManualSetupRequired,
            content: l10n.setupDatabaseManualContent,
          ),
          const SizedBox(height: 24),
          _buildNumberedStep(1, l10n.setupStep4_1),
          const SizedBox(height: 16),
          _buildNumberedStep(2, l10n.setupStep4_2),
          const SizedBox(height: 16),
          _buildNumberedStep(3, l10n.setupStep4_3),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Theme.of(context).colorScheme.outlineVariant),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton.icon(
                      onPressed: () {
                        Clipboard.setData(const ClipboardData(text: _databaseSQL));
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text(l10n.setupSqlCopied)),
                        );
                      },
                      icon: const Icon(Icons.copy, size: 16),
                      label: Text(l10n.copy),
                    ),
                  ],
                ),
                const Text(_databaseSQL, style: TextStyle(fontFamily: 'monospace', fontSize: 11)),
              ],
            ),
          ),
          const SizedBox(height: 16),
          _buildNumberedStep(4, l10n.setupStep4_4),
          const SizedBox(height: 16),
          _buildNumberedStep(5, l10n.setupStep4_5),
        ] else ...[
          const Center(child: CircularProgressIndicator()),
          const SizedBox(height: 24),
          Center(child: Text(l10n.setupCheckingDatabase)),
        ],
        if (_error != null && !needsManualSetup) ...[
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.errorContainer,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.onErrorContainer)),
          ),
        ],
      ],
      bottomButton: Row(
        children: [
          TextButton(onPressed: _previousStep, child: Text(l10n.back)),
          const Spacer(),
          FilledButton(
            onPressed: _isSettingUp ? null : _setupDatabase,
            child: _isSettingUp
                ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2))
                : Text(needsManualSetup ? l10n.setupIveRunSql : l10n.setupCheckDatabase),
          ),
        ],
      ),
    );
  }

  Widget _buildStoragePage() {
    final l10n = AppLocalizations.of(context)!;
    final needsManualSetup = _error == 'storage_manual_setup';

    return _buildPageContainer(
      children: [
        Text(l10n.setupStep5Title, style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 24),
        if (needsManualSetup) ...[
          _buildInfoCard(
            icon: Icons.info_outlined,
            title: l10n.setupManualSetupRequired,
            content: l10n.setupStorageManualContent,
          ),
          const SizedBox(height: 24),
          _buildNumberedStep(1, l10n.setupStep5_1),
          const SizedBox(height: 16),
          _buildNumberedStep(2, l10n.setupStep5_2),
          const SizedBox(height: 16),
          _buildNumberedStep(3, l10n.setupStep5_3),
          const SizedBox(height: 16),
          _buildNumberedStep(4, l10n.setupStep5_4),
          const SizedBox(height: 16),
          _buildNumberedStep(5, l10n.setupStep5_5),
          const SizedBox(height: 24),
          _buildInfoCard(
            icon: Icons.security,
            title: l10n.setupAddStoragePolicy,
            content: l10n.setupAddStoragePolicyContent,
          ),
        ] else ...[
          const Center(child: CircularProgressIndicator()),
          const SizedBox(height: 24),
          Center(child: Text(l10n.setupSettingUpStorage)),
        ],
        if (_error != null && !needsManualSetup) ...[
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.errorContainer,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(_error!, style: TextStyle(color: Theme.of(context).colorScheme.onErrorContainer)),
          ),
        ],
      ],
      bottomButton: Row(
        children: [
          TextButton(onPressed: _previousStep, child: Text(l10n.back)),
          const Spacer(),
          if (needsManualSetup)
            Flexible(
              child: TextButton(
                onPressed: _skipStorageAndComplete,
                child: Text(l10n.skip),
              ),
            ),
          const SizedBox(width: 8),
          Flexible(
            child: FilledButton(
              onPressed: _isSettingUp ? null : _setupStorage,
              child: _isSettingUp
                  ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2))
                  : Text(needsManualSetup ? l10n.done : l10n.setupSetupStorage),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCompletePage() {
    final l10n = AppLocalizations.of(context)!;
    return _buildPageContainer(
      children: [
                Center(child: Icon(Icons.check_circle, size: 100, color: Theme.of(context).colorScheme.primary)),
        const SizedBox(height: 24),
        Center(
          child: Text(l10n.setupComplete, style: Theme.of(context).textTheme.headlineMedium),
        ),
        const SizedBox(height: 16),
        Center(
          child: Text(
            l10n.setupCompleteDescription,
            textAlign: TextAlign.center,
            style: const TextStyle(fontSize: 16),
          ),
        ),
        const SizedBox(height: 32),
        _buildInfoCard(
          icon: Icons.tips_and_updates_outlined,
          title: l10n.setupQuickTips,
          content: l10n.setupQuickTipsContent,
        ),
      ],
      bottomButton: SizedBox(
        width: double.infinity,
        child: FilledButton(
          onPressed: widget.onSetupComplete,
          child: Text(l10n.setupStartUsing),
        ),
      ),
    );
  }

  Widget _buildNumberedStep(int number, String text) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 28,
          height: 28,
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Center(
            child: Text('$number', style: TextStyle(color: Theme.of(context).colorScheme.onPrimary, fontWeight: FontWeight.bold)),
          ),
        ),
        const SizedBox(width: 12),
        Flexible(child: Text(text, style: const TextStyle(fontSize: 15), softWrap: true)),
      ],
    );
  }

  Widget _buildInfoCard({required IconData icon, required String title, required String content}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primaryContainer.withOpacity(0.3),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Theme.of(context).colorScheme.primary.withOpacity(0.3)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: Theme.of(context).colorScheme.primary),
              const SizedBox(width: 8),
              Text(title, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
            ],
          ),
          const SizedBox(height: 8),
          Text(content, style: const TextStyle(fontSize: 14)),
        ],
      ),
    );
  }

  static const _databaseSQL = '''
CREATE TABLE IF NOT EXISTS artworks (
  id SERIAL PRIMARY KEY,
  name TEXT NOT NULL,
  description TEXT,
  date_month INTEGER,
  date_year INTEGER,
  dimension TEXT,
  medium TEXT,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS artwork_images (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  artwork_id INTEGER REFERENCES artworks(id) ON DELETE CASCADE,
  storage_path TEXT NOT NULL,
  thumbnail_path TEXT,
  tag TEXT NOT NULL CHECK (tag IN ('main', 'photo_reference', 'scan')),
  sort_order INTEGER DEFAULT 0,
  created_at TIMESTAMPTZ DEFAULT NOW()
);

ALTER TABLE artworks ENABLE ROW LEVEL SECURITY;
ALTER TABLE artwork_images ENABLE ROW LEVEL SECURITY;

CREATE POLICY "Allow all on artworks" ON artworks FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "Allow all on artwork_images" ON artwork_images FOR ALL USING (true) WITH CHECK (true);''';
}
