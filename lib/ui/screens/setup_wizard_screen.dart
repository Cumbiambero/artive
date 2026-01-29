import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../core/services/setup_service.dart';

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
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Open in Browser'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Text('Could not open browser automatically. Please copy this URL and open it manually:'),
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
                const SnackBar(content: Text('URL copied to clipboard')),
              );
            },
            child: const Text('Copy URL'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Artive Setup'),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(4),
          child: LinearProgressIndicator(
            value: (_currentStep + 1) / _steps.length,
            backgroundColor: Colors.grey[300],
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
    return _buildPageContainer(
      children: [
        const Icon(Icons.palette, size: 80, color: Colors.deepPurple),
        const SizedBox(height: 24),
        Text('Welcome to Artive!', style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: 16),
        const Text(
          'This wizard will help you set up cloud storage for your artwork catalogue.\n\n'
          'Your artworks and images will be stored securely in Supabase, a free cloud platform.\n\n'
          'The setup takes about 5 minutes.',
          style: TextStyle(fontSize: 16),
        ),
        const SizedBox(height: 24),
        _buildInfoCard(
          icon: Icons.cloud_outlined,
          title: 'What is Supabase?',
          content: 'Supabase is a free, open-source backend service. It provides a database and file storage for your app.',
        ),
        const SizedBox(height: 16),
        _buildInfoCard(
          icon: Icons.lock_outlined,
          title: 'Your Data, Your Control',
          content: 'You create your own Supabase account. Your data belongs to you and only you have access.',
        ),
      ],
      bottomButton: SizedBox(
        width: double.infinity,
        child: FilledButton(
          onPressed: _nextStep,
          child: const Text('Get Started'),
        ),
      ),
    );
  }

  Widget _buildCreateProjectPage() {
    return _buildPageContainer(
      children: [
        Text('Step 1: Create a Supabase Project', style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 24),
        _buildNumberedStep(1, 'Go to supabase.com and create a free account'),
        const SizedBox(height: 8),
        OutlinedButton.icon(
          onPressed: () => _launchUrl('https://supabase.com'),
          icon: const Icon(Icons.open_in_new),
          label: const Text('Open Supabase'),
        ),
        const SizedBox(height: 24),
        _buildNumberedStep(2, 'Click "New Project" in the dashboard'),
        const SizedBox(height: 16),
        _buildNumberedStep(3, 'Choose a name for your project (e.g., "artive")'),
        const SizedBox(height: 16),
        _buildNumberedStep(4, 'Set a secure database password (save it somewhere safe!)'),
        const SizedBox(height: 16),
        _buildNumberedStep(5, 'Select a region close to you'),
        const SizedBox(height: 16),
        _buildNumberedStep(6, 'Click "Create new project" and wait for it to be ready'),
        const SizedBox(height: 24),
        _buildInfoCard(
          icon: Icons.info_outlined,
          title: 'Free Tier',
          content: 'Supabase free tier includes 500MB database and 1GB file storage - plenty for thousands of artworks!',
        ),
      ],
      bottomButton: Row(
        children: [
          TextButton(onPressed: _previousStep, child: const Text('Back')),
          const Spacer(),
          FilledButton(onPressed: _nextStep, child: const Text('Project Created')),
        ],
      ),
    );
  }

  Widget _buildGetCredentialsPage() {
    return _buildPageContainer(
      children: [
        Text('Step 2: Get Your Credentials', style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 24),
        _buildNumberedStep(1, 'In your Supabase project, go to "Project Settings" (gear icon)'),
        const SizedBox(height: 16),
        _buildNumberedStep(2, 'Click on "Data API" in the settings menu'),
        const SizedBox(height: 16),
        _buildNumberedStep(3, 'Find "Project URL" - looks like: https://xxxxx.supabase.co'),
        const SizedBox(height: 16),
        _buildNumberedStep(4, 'Find the "anon" key under "Project API keys"'),
        const SizedBox(height: 16),
        _buildInfoCard(
          icon: Icons.info_outlined,
          title: 'About API Keys',
          content: 'The anon key is safe for apps. It works with Row Level Security policies.',
        ),
        const SizedBox(height: 24),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.amber[50],
            borderRadius: BorderRadius.circular(12),
            border: Border.all(color: Colors.amber[200]!),
          ),
          child: const Row(
            children: [
              Icon(Icons.lightbulb_outline, color: Colors.amber),
              SizedBox(width: 12),
              Expanded(
                child: Text(
                  'Tip: You can click the copy button next to each value in Supabase to copy it to clipboard.',
                  style: TextStyle(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ],
      bottomButton: Row(
        children: [
          TextButton(onPressed: _previousStep, child: const Text('Back')),
          const Spacer(),
          FilledButton(onPressed: _nextStep, child: const Text('I Have My Credentials')),
        ],
      ),
    );
  }

  Widget _buildConfigurePage() {
    return _buildPageContainer(
      children: [
        Text('Step 3: Enter Your Credentials', style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 24),
        TextField(
          controller: _urlController,
          decoration: const InputDecoration(
            labelText: 'Project URL',
            hintText: 'https://xxxxx.supabase.co',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.link),
          ),
          keyboardType: TextInputType.url,
        ),
        const SizedBox(height: 16),
        TextField(
          controller: _anonKeyController,
          decoration: InputDecoration(
            labelText: 'Anon Public Key',
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
              color: Colors.red[50],
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.red[200]!),
            ),
            child: Row(
              children: [
                Icon(Icons.error_outline, color: Colors.red[700]),
                const SizedBox(width: 8),
                Expanded(child: Text(_error!, style: TextStyle(color: Colors.red[700]))),
              ],
            ),
          ),
        ],
      ],
      bottomButton: Row(
        children: [
          TextButton(onPressed: _previousStep, child: const Text('Back')),
          const Spacer(),
          FilledButton(
            onPressed: _isValidating ? null : _validateAndSaveCredentials,
            child: _isValidating
                ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2))
                : const Text('Validate & Continue'),
          ),
        ],
      ),
    );
  }

  Widget _buildDatabasePage() {
    final needsManualSetup = _error == 'database_setup_needed';

    return _buildPageContainer(
      children: [
        Text('Step 4: Database Setup', style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 24),
        if (needsManualSetup) ...[
          _buildInfoCard(
            icon: Icons.info_outlined,
            title: 'Manual Setup Required',
            content: 'The database tables need to be created manually. This is a one-time setup.',
          ),
          const SizedBox(height: 24),
          _buildNumberedStep(1, 'In Supabase, go to "SQL Editor" in the sidebar'),
          const SizedBox(height: 16),
          _buildNumberedStep(2, 'Click "New query"'),
          const SizedBox(height: 16),
          _buildNumberedStep(3, 'Copy and paste the following SQL:'),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey[300]!),
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
                          const SnackBar(content: Text('SQL copied to clipboard')),
                        );
                      },
                      icon: const Icon(Icons.copy, size: 16),
                      label: const Text('Copy'),
                    ),
                  ],
                ),
                const Text(_databaseSQL, style: TextStyle(fontFamily: 'monospace', fontSize: 11)),
              ],
            ),
          ),
          const SizedBox(height: 16),
          _buildNumberedStep(4, 'Click "Run" to execute the query'),
          const SizedBox(height: 16),
          _buildNumberedStep(5, 'You should see "Success. No rows returned"'),
        ] else ...[
          const Center(child: CircularProgressIndicator()),
          const SizedBox(height: 24),
          const Center(child: Text('Checking database...')),
        ],
        if (_error != null && !needsManualSetup) ...[
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.red[50],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(_error!, style: TextStyle(color: Colors.red[700])),
          ),
        ],
      ],
      bottomButton: Row(
        children: [
          TextButton(onPressed: _previousStep, child: const Text('Back')),
          const Spacer(),
          FilledButton(
            onPressed: _isSettingUp ? null : _setupDatabase,
            child: _isSettingUp
                ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2))
                : Text(needsManualSetup ? 'I\'ve Run the SQL' : 'Check Database'),
          ),
        ],
      ),
    );
  }

  Widget _buildStoragePage() {
    final needsManualSetup = _error == 'storage_manual_setup';

    return _buildPageContainer(
      children: [
        Text('Step 5: Storage Setup', style: Theme.of(context).textTheme.headlineSmall),
        const SizedBox(height: 24),
        if (needsManualSetup) ...[
          _buildInfoCard(
            icon: Icons.info_outlined,
            title: 'Manual Setup Required',
            content: 'Create the storage bucket for your artwork images.',
          ),
          const SizedBox(height: 24),
          _buildNumberedStep(1, 'In Supabase, go to "Storage" in the sidebar'),
          const SizedBox(height: 16),
          _buildNumberedStep(2, 'Click "New bucket"'),
          const SizedBox(height: 16),
          _buildNumberedStep(3, 'Name it exactly: artworks'),
          const SizedBox(height: 16),
          _buildNumberedStep(4, 'Leave "Public bucket" OFF (recommended)'),
          const SizedBox(height: 16),
          _buildNumberedStep(5, 'Click "Create bucket"'),
          const SizedBox(height: 24),
          _buildInfoCard(
            icon: Icons.security,
            title: 'Add Storage Policy',
            content: 'Click bucket → Policies → New Policy → "For full customization" → Name: allow_all → Check all operations → Save.',
          ),
        ] else ...[
          const Center(child: CircularProgressIndicator()),
          const SizedBox(height: 24),
          const Center(child: Text('Setting up storage...')),
        ],
        if (_error != null && !needsManualSetup) ...[
          const SizedBox(height: 16),
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: Colors.red[50],
              borderRadius: BorderRadius.circular(8),
            ),
            child: Text(_error!, style: TextStyle(color: Colors.red[700])),
          ),
        ],
      ],
      bottomButton: Row(
        children: [
          TextButton(onPressed: _previousStep, child: const Text('Back')),
          const Spacer(),
          if (needsManualSetup)
            Flexible(
              child: TextButton(
                onPressed: _skipStorageAndComplete,
                child: const Text('Skip'),
              ),
            ),
          const SizedBox(width: 8),
          Flexible(
            child: FilledButton(
              onPressed: _isSettingUp ? null : _setupStorage,
              child: _isSettingUp
                  ? const SizedBox(width: 20, height: 20, child: CircularProgressIndicator(strokeWidth: 2))
                  : Text(needsManualSetup ? 'Done' : 'Setup Storage'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCompletePage() {
    return _buildPageContainer(
      children: [
        const Center(child: Icon(Icons.check_circle, size: 100, color: Colors.green)),
        const SizedBox(height: 24),
        Center(
          child: Text('Setup Complete!', style: Theme.of(context).textTheme.headlineMedium),
        ),
        const SizedBox(height: 16),
        const Center(
          child: Text(
            'Artive is now connected to your Supabase project.\n\n'
            'You can start adding your artworks!',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ),
        const SizedBox(height: 32),
        _buildInfoCard(
          icon: Icons.tips_and_updates_outlined,
          title: 'Quick Tips',
          content: '• Tap the + button to add your first artwork\n'
              '• Add multiple images with different tags (main, reference, scan)\n'
              '• Use search and filters to find artworks quickly\n'
              '• Change language in Settings',
        ),
      ],
      bottomButton: SizedBox(
        width: double.infinity,
        child: FilledButton(
          onPressed: widget.onSetupComplete,
          child: const Text('Start Using Artive'),
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
            color: Colors.deepPurple,
            borderRadius: BorderRadius.circular(14),
          ),
          child: Center(
            child: Text('$number', style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
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
        color: Colors.deepPurple[50],
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.deepPurple[100]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, color: Colors.deepPurple),
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
