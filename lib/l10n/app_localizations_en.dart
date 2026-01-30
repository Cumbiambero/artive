// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'Artive';

  @override
  String get artworks => 'Artworks';

  @override
  String get addArtwork => 'Add Artwork';

  @override
  String get editArtwork => 'Edit Artwork';

  @override
  String get deleteArtwork => 'Delete Artwork';

  @override
  String get name => 'Name';

  @override
  String get description => 'Description';

  @override
  String get descriptionOptional => 'Description (optional)';

  @override
  String get date => 'Created at';

  @override
  String get month => 'Month';

  @override
  String get year => 'Year';

  @override
  String get dimension => 'Dimension';

  @override
  String get dimensionHint => 'e.g., 50x70 cm';

  @override
  String get medium => 'Medium';

  @override
  String get mediumHint => 'e.g., Oil on canvas';

  @override
  String get images => 'Images';

  @override
  String get addImage => 'Add Image';

  @override
  String get photo => 'Photo';

  @override
  String get reference => 'Reference';

  @override
  String get scan => 'Scan';

  @override
  String get save => 'Save';

  @override
  String get cancel => 'Cancel';

  @override
  String get delete => 'Delete';

  @override
  String get confirmDelete => 'Are you sure you want to delete this artwork?';

  @override
  String get confirmDeleteImage => 'Are you sure you want to delete this image?';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'No';

  @override
  String get settings => 'Settings';

  @override
  String get language => 'Language';

  @override
  String get about => 'About';

  @override
  String get version => 'Version';

  @override
  String get search => 'Search';

  @override
  String get searchHint => 'Exact match search';

  @override
  String get noArtworks => 'No artworks yet';

  @override
  String get noArtworksHint => 'Tap + to add your first artwork';

  @override
  String get loading => 'Loading...';

  @override
  String get error => 'Error';

  @override
  String get retry => 'Retry';

  @override
  String get uploadingImage => 'Uploading image...';

  @override
  String get imageUploaded => 'Image uploaded';

  @override
  String get imageFailed => 'Image upload failed';

  @override
  String get artworkSaved => 'Artwork saved';

  @override
  String get artworkDeleted => 'Artwork deleted';

  @override
  String get requiredField => 'This field is required';

  @override
  String get invalidYear => 'Please enter a valid year';

  @override
  String get invalidMonth => 'Please enter a month between 1 and 12';

  @override
  String get selectImageTag => 'Select image type';

  @override
  String get gallery => 'Gallery';

  @override
  String get camera => 'Camera';

  @override
  String get selectSource => 'Select image source';

  @override
  String get id => 'ID';

  @override
  String get createdAt => 'Uploaded at';

  @override
  String get filterByMedium => 'Filter by medium';

  @override
  String get filterByYear => 'Filter by year';

  @override
  String get allMedia => 'All media';

  @override
  String get allYears => 'All years';

  @override
  String get sortBy => 'Sort by';

  @override
  String get sortByName => 'Name';

  @override
  String get sortByDate => 'Date';

  @override
  String get sortByCreated => 'Created';

  @override
  String get ascending => 'Ascending';

  @override
  String get descending => 'Descending';

  @override
  String get back => 'Back';

  @override
  String get close => 'Close';

  @override
  String get copy => 'Copy';

  @override
  String get skip => 'Skip';

  @override
  String get done => 'Done';

  @override
  String get reset => 'Reset';

  @override
  String get cloudConnection => 'Cloud Connection';

  @override
  String get cloudConnectionSubtitle => 'Reconfigure Supabase connection';

  @override
  String get resetCloudConnection => 'Reset Cloud Connection';

  @override
  String get resetCloudConnectionMessage => 'This will disconnect the app from your Supabase project. You will need to run the setup wizard again.\n\nYour data in Supabase will NOT be deleted.';

  @override
  String get restartToReconfigure => 'Please restart the app to reconfigure';

  @override
  String get databasePaused => 'Database Paused';

  @override
  String get databasePausedMessage => 'Your Supabase project is paused due to inactivity.\n\nTo restore:\n1. Go to supabase.com/dashboard\n2. Select your project\n3. Click \"Restore project\"\n\nThis takes about 1 minute.';

  @override
  String get setupTitle => 'Artive Setup';

  @override
  String get setupWelcome => 'Welcome to Artive!';

  @override
  String get setupWelcomeDescription => 'This wizard will help you set up cloud storage for your artwork catalogue.\n\nYour artworks and images will be stored securely in Supabase, a free cloud platform.\n\nThe setup takes about 5 minutes.';

  @override
  String get setupWhatIsSupabase => 'What is Supabase?';

  @override
  String get setupWhatIsSupabaseContent => 'Supabase is a free, open-source backend service. It provides a database and file storage for your app.';

  @override
  String get setupYourData => 'Your Data, Your Control';

  @override
  String get setupYourDataContent => 'You create your own Supabase account. Your data belongs to you and only you have access.';

  @override
  String get setupGetStarted => 'Get Started';

  @override
  String get setupStep1Title => 'Step 1: Create a Supabase Project';

  @override
  String get setupStep1_1 => 'Go to supabase.com and create a free account';

  @override
  String get setupOpenSupabase => 'Open Supabase';

  @override
  String get setupStep1_2 => 'Click \"New Project\" in the dashboard';

  @override
  String get setupStep1_3 => 'Choose a name for your project (e.g., \"artive\")';

  @override
  String get setupStep1_4 => 'Set a secure database password (save it somewhere safe!)';

  @override
  String get setupStep1_5 => 'Select a region close to you';

  @override
  String get setupStep1_6 => 'Click \"Create new project\" and wait for it to be ready';

  @override
  String get setupFreeTier => 'Free Tier';

  @override
  String get setupFreeTierContent => 'Supabase free tier includes 500MB database and 1GB file storage - plenty for thousands of artworks!';

  @override
  String get setupProjectCreated => 'Project Created';

  @override
  String get setupStep2Title => 'Step 2: Get Your Credentials';

  @override
  String get setupStep2_1 => 'In your Supabase project, go to \"Project Settings\" (gear icon)';

  @override
  String get setupStep2_2 => 'Click on \"Data API\" in the settings menu';

  @override
  String get setupStep2_3 => 'Find \"Project URL\" - looks like: https://xxxxx.supabase.co';

  @override
  String get setupStep2_4 => 'Find the \"anon\" key under \"Project API keys\"';

  @override
  String get setupAboutApiKeys => 'About API Keys';

  @override
  String get setupAboutApiKeysContent => 'The anon key is safe for apps. It works with Row Level Security policies.';

  @override
  String get setupCredentialsTip => 'Tip: You can click the copy button next to each value in Supabase to copy it to clipboard.';

  @override
  String get setupIHaveCredentials => 'I Have My Credentials';

  @override
  String get setupStep3Title => 'Step 3: Enter Your Credentials';

  @override
  String get setupProjectUrl => 'Project URL';

  @override
  String get setupAnonKey => 'Anon Key';

  @override
  String get setupValidateAndContinue => 'Validate & Continue';

  @override
  String get setupStep4Title => 'Step 4: Database Setup';

  @override
  String get setupManualSetupRequired => 'Manual Setup Required';

  @override
  String get setupDatabaseManualContent => 'The database tables need to be created manually. This is a one-time setup.';

  @override
  String get setupStep4_1 => 'In Supabase, go to \"SQL Editor\" in the sidebar';

  @override
  String get setupStep4_2 => 'Click \"New query\"';

  @override
  String get setupStep4_3 => 'Copy and paste the following SQL:';

  @override
  String get setupStep4_4 => 'Click \"Run\" to execute the query';

  @override
  String get setupStep4_5 => 'You should see \"Success. No rows returned\"';

  @override
  String get setupSqlCopied => 'SQL copied to clipboard';

  @override
  String get setupCheckingDatabase => 'Checking database...';

  @override
  String get setupIveRunSql => 'I\'ve Run the SQL';

  @override
  String get setupCheckDatabase => 'Check Database';

  @override
  String get setupStep5Title => 'Step 5: Storage Setup';

  @override
  String get setupStorageManualContent => 'Create the storage bucket for your artwork images.';

  @override
  String get setupStep5_1 => 'In Supabase, go to \"Storage\" in the sidebar';

  @override
  String get setupStep5_2 => 'Click \"New bucket\"';

  @override
  String get setupStep5_3 => 'Name it exactly: artworks';

  @override
  String get setupStep5_4 => 'Leave \"Public bucket\" OFF (recommended)';

  @override
  String get setupStep5_5 => 'Click \"Create bucket\"';

  @override
  String get setupAddStoragePolicy => 'Add Storage Policy';

  @override
  String get setupAddStoragePolicyContent => 'Click bucket → Policies → New Policy → \"For full customization\" → Name: allow_all → Check all operations → Save.';

  @override
  String get setupSettingUpStorage => 'Setting up storage...';

  @override
  String get setupSetupStorage => 'Setup Storage';

  @override
  String get setupComplete => 'Setup Complete!';

  @override
  String get setupCompleteDescription => 'Artive is now connected to your Supabase project.\n\nYou can start adding your artworks!';

  @override
  String get setupQuickTips => 'Quick Tips';

  @override
  String get setupQuickTipsContent => '• Tap the + button to add your first artwork\n• Add multiple images with different tags (main, reference, scan)\n• Use search and filters to find artworks quickly\n• Change language in Settings';

  @override
  String get setupStartUsing => 'Start Using Artive';

  @override
  String get openInBrowser => 'Open in Browser';

  @override
  String get couldNotOpenBrowser => 'Could not open browser automatically. Please copy this URL and open it manually:';

  @override
  String get urlCopied => 'URL copied to clipboard';

  @override
  String get backupRestore => 'Backup & Restore';

  @override
  String get backupRestoreSubtitle => 'Export or import your data';

  @override
  String get createBackup => 'Create Backup';

  @override
  String get createBackupDescription => 'Export all your artworks and images to a ZIP file that you can save or share.';

  @override
  String get restoreBackup => 'Restore Backup';

  @override
  String get restoreBackupDescription => 'Import artworks and images from a previously created backup file.';

  @override
  String get restoreBackupConfirm => 'How would you like to restore the backup?';

  @override
  String get restoreMerge => 'Merge with existing';

  @override
  String get restoreReplace => 'Replace all';

  @override
  String get backupCreated => 'Backup created successfully';

  @override
  String restoreComplete(int count) {
    return '$count artworks restored';
  }

  @override
  String get backupNote => 'Backups include all artwork data and images. Store them safely!';
}
