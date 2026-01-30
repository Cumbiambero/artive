import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_bn.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('bn'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('hi'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('nl'),
    Locale('pl'),
    Locale('pt'),
    Locale('ru'),
    Locale('th'),
    Locale('tr'),
    Locale('vi'),
    Locale('zh')
  ];

  /// No description provided for @appTitle.
  ///
  /// In en, this message translates to:
  /// **'Artive'**
  String get appTitle;

  /// No description provided for @artworks.
  ///
  /// In en, this message translates to:
  /// **'Artworks'**
  String get artworks;

  /// No description provided for @addArtwork.
  ///
  /// In en, this message translates to:
  /// **'Add Artwork'**
  String get addArtwork;

  /// No description provided for @editArtwork.
  ///
  /// In en, this message translates to:
  /// **'Edit Artwork'**
  String get editArtwork;

  /// No description provided for @deleteArtwork.
  ///
  /// In en, this message translates to:
  /// **'Delete Artwork'**
  String get deleteArtwork;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @descriptionOptional.
  ///
  /// In en, this message translates to:
  /// **'Description (optional)'**
  String get descriptionOptional;

  /// No description provided for @date.
  ///
  /// In en, this message translates to:
  /// **'Created at'**
  String get date;

  /// No description provided for @month.
  ///
  /// In en, this message translates to:
  /// **'Month'**
  String get month;

  /// No description provided for @year.
  ///
  /// In en, this message translates to:
  /// **'Year'**
  String get year;

  /// No description provided for @dimension.
  ///
  /// In en, this message translates to:
  /// **'Dimension'**
  String get dimension;

  /// No description provided for @dimensionHint.
  ///
  /// In en, this message translates to:
  /// **'e.g., 50x70 cm'**
  String get dimensionHint;

  /// No description provided for @medium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get medium;

  /// No description provided for @mediumHint.
  ///
  /// In en, this message translates to:
  /// **'e.g., Oil on canvas'**
  String get mediumHint;

  /// No description provided for @images.
  ///
  /// In en, this message translates to:
  /// **'Images'**
  String get images;

  /// No description provided for @addImage.
  ///
  /// In en, this message translates to:
  /// **'Add Image'**
  String get addImage;

  /// No description provided for @photo.
  ///
  /// In en, this message translates to:
  /// **'Photo'**
  String get photo;

  /// No description provided for @reference.
  ///
  /// In en, this message translates to:
  /// **'Reference'**
  String get reference;

  /// No description provided for @scan.
  ///
  /// In en, this message translates to:
  /// **'Scan'**
  String get scan;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// No description provided for @confirmDelete.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this artwork?'**
  String get confirmDelete;

  /// No description provided for @confirmDeleteImage.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this image?'**
  String get confirmDeleteImage;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @settings.
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @about.
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// No description provided for @version.
  ///
  /// In en, this message translates to:
  /// **'Version'**
  String get version;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @searchHint.
  ///
  /// In en, this message translates to:
  /// **'Exact match search'**
  String get searchHint;

  /// No description provided for @noArtworks.
  ///
  /// In en, this message translates to:
  /// **'No artworks yet'**
  String get noArtworks;

  /// No description provided for @noArtworksHint.
  ///
  /// In en, this message translates to:
  /// **'Tap + to add your first artwork'**
  String get noArtworksHint;

  /// No description provided for @loading.
  ///
  /// In en, this message translates to:
  /// **'Loading...'**
  String get loading;

  /// No description provided for @error.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get error;

  /// No description provided for @retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// No description provided for @uploadingImage.
  ///
  /// In en, this message translates to:
  /// **'Uploading image...'**
  String get uploadingImage;

  /// No description provided for @imageUploaded.
  ///
  /// In en, this message translates to:
  /// **'Image uploaded'**
  String get imageUploaded;

  /// No description provided for @imageFailed.
  ///
  /// In en, this message translates to:
  /// **'Image upload failed'**
  String get imageFailed;

  /// No description provided for @artworkSaved.
  ///
  /// In en, this message translates to:
  /// **'Artwork saved'**
  String get artworkSaved;

  /// No description provided for @artworkDeleted.
  ///
  /// In en, this message translates to:
  /// **'Artwork deleted'**
  String get artworkDeleted;

  /// No description provided for @requiredField.
  ///
  /// In en, this message translates to:
  /// **'This field is required'**
  String get requiredField;

  /// No description provided for @invalidYear.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid year'**
  String get invalidYear;

  /// No description provided for @invalidMonth.
  ///
  /// In en, this message translates to:
  /// **'Please enter a month between 1 and 12'**
  String get invalidMonth;

  /// No description provided for @selectImageTag.
  ///
  /// In en, this message translates to:
  /// **'Select image type'**
  String get selectImageTag;

  /// No description provided for @gallery.
  ///
  /// In en, this message translates to:
  /// **'Gallery'**
  String get gallery;

  /// No description provided for @camera.
  ///
  /// In en, this message translates to:
  /// **'Camera'**
  String get camera;

  /// No description provided for @selectSource.
  ///
  /// In en, this message translates to:
  /// **'Select image source'**
  String get selectSource;

  /// No description provided for @id.
  ///
  /// In en, this message translates to:
  /// **'ID'**
  String get id;

  /// No description provided for @createdAt.
  ///
  /// In en, this message translates to:
  /// **'Uploaded at'**
  String get createdAt;

  /// No description provided for @filterByMedium.
  ///
  /// In en, this message translates to:
  /// **'Filter by medium'**
  String get filterByMedium;

  /// No description provided for @filterByYear.
  ///
  /// In en, this message translates to:
  /// **'Filter by year'**
  String get filterByYear;

  /// No description provided for @allMedia.
  ///
  /// In en, this message translates to:
  /// **'All media'**
  String get allMedia;

  /// No description provided for @allYears.
  ///
  /// In en, this message translates to:
  /// **'All years'**
  String get allYears;

  /// No description provided for @sortBy.
  ///
  /// In en, this message translates to:
  /// **'Sort by'**
  String get sortBy;

  /// No description provided for @sortByName.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get sortByName;

  /// No description provided for @sortByDate.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get sortByDate;

  /// No description provided for @sortByCreated.
  ///
  /// In en, this message translates to:
  /// **'Created'**
  String get sortByCreated;

  /// No description provided for @ascending.
  ///
  /// In en, this message translates to:
  /// **'Ascending'**
  String get ascending;

  /// No description provided for @descending.
  ///
  /// In en, this message translates to:
  /// **'Descending'**
  String get descending;

  /// No description provided for @back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get back;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// No description provided for @copy.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get copy;

  /// No description provided for @skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip;

  /// No description provided for @done.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get done;

  /// No description provided for @reset.
  ///
  /// In en, this message translates to:
  /// **'Reset'**
  String get reset;

  /// No description provided for @cloudConnection.
  ///
  /// In en, this message translates to:
  /// **'Cloud Connection'**
  String get cloudConnection;

  /// No description provided for @cloudConnectionSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Reconfigure Supabase connection'**
  String get cloudConnectionSubtitle;

  /// No description provided for @resetCloudConnection.
  ///
  /// In en, this message translates to:
  /// **'Reset Cloud Connection'**
  String get resetCloudConnection;

  /// No description provided for @resetCloudConnectionMessage.
  ///
  /// In en, this message translates to:
  /// **'This will disconnect the app from your Supabase project. You will need to run the setup wizard again.\n\nYour data in Supabase will NOT be deleted.'**
  String get resetCloudConnectionMessage;

  /// No description provided for @restartToReconfigure.
  ///
  /// In en, this message translates to:
  /// **'Please restart the app to reconfigure'**
  String get restartToReconfigure;

  /// No description provided for @databasePaused.
  ///
  /// In en, this message translates to:
  /// **'Database Paused'**
  String get databasePaused;

  /// No description provided for @databasePausedMessage.
  ///
  /// In en, this message translates to:
  /// **'Your Supabase project is paused due to inactivity.\n\nTo restore:\n1. Go to supabase.com/dashboard\n2. Select your project\n3. Click \"Restore project\"\n\nThis takes about 1 minute.'**
  String get databasePausedMessage;

  /// No description provided for @setupTitle.
  ///
  /// In en, this message translates to:
  /// **'Artive Setup'**
  String get setupTitle;

  /// No description provided for @setupWelcome.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Artive!'**
  String get setupWelcome;

  /// No description provided for @setupWelcomeDescription.
  ///
  /// In en, this message translates to:
  /// **'This wizard will help you set up cloud storage for your artwork catalogue.\n\nYour artworks and images will be stored securely in Supabase, a free cloud platform.\n\nThe setup takes about 5 minutes.'**
  String get setupWelcomeDescription;

  /// No description provided for @setupWhatIsSupabase.
  ///
  /// In en, this message translates to:
  /// **'What is Supabase?'**
  String get setupWhatIsSupabase;

  /// No description provided for @setupWhatIsSupabaseContent.
  ///
  /// In en, this message translates to:
  /// **'Supabase is a free, open-source backend service. It provides a database and file storage for your app.'**
  String get setupWhatIsSupabaseContent;

  /// No description provided for @setupYourData.
  ///
  /// In en, this message translates to:
  /// **'Your Data, Your Control'**
  String get setupYourData;

  /// No description provided for @setupYourDataContent.
  ///
  /// In en, this message translates to:
  /// **'You create your own Supabase account. Your data belongs to you and only you have access.'**
  String get setupYourDataContent;

  /// No description provided for @setupGetStarted.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get setupGetStarted;

  /// No description provided for @setupStep1Title.
  ///
  /// In en, this message translates to:
  /// **'Step 1: Create a Supabase Project'**
  String get setupStep1Title;

  /// No description provided for @setupStep1_1.
  ///
  /// In en, this message translates to:
  /// **'Go to supabase.com and create a free account'**
  String get setupStep1_1;

  /// No description provided for @setupOpenSupabase.
  ///
  /// In en, this message translates to:
  /// **'Open Supabase'**
  String get setupOpenSupabase;

  /// No description provided for @setupStep1_2.
  ///
  /// In en, this message translates to:
  /// **'Click \"New Project\" in the dashboard'**
  String get setupStep1_2;

  /// No description provided for @setupStep1_3.
  ///
  /// In en, this message translates to:
  /// **'Choose a name for your project (e.g., \"artive\")'**
  String get setupStep1_3;

  /// No description provided for @setupStep1_4.
  ///
  /// In en, this message translates to:
  /// **'Set a secure database password (save it somewhere safe!)'**
  String get setupStep1_4;

  /// No description provided for @setupStep1_5.
  ///
  /// In en, this message translates to:
  /// **'Select a region close to you'**
  String get setupStep1_5;

  /// No description provided for @setupStep1_6.
  ///
  /// In en, this message translates to:
  /// **'Click \"Create new project\" and wait for it to be ready'**
  String get setupStep1_6;

  /// No description provided for @setupFreeTier.
  ///
  /// In en, this message translates to:
  /// **'Free Tier'**
  String get setupFreeTier;

  /// No description provided for @setupFreeTierContent.
  ///
  /// In en, this message translates to:
  /// **'Supabase free tier includes 500MB database and 1GB file storage - plenty for thousands of artworks!'**
  String get setupFreeTierContent;

  /// No description provided for @setupProjectCreated.
  ///
  /// In en, this message translates to:
  /// **'Project Created'**
  String get setupProjectCreated;

  /// No description provided for @setupStep2Title.
  ///
  /// In en, this message translates to:
  /// **'Step 2: Get Your Credentials'**
  String get setupStep2Title;

  /// No description provided for @setupStep2_1.
  ///
  /// In en, this message translates to:
  /// **'In your Supabase project, go to \"Project Settings\" (gear icon)'**
  String get setupStep2_1;

  /// No description provided for @setupStep2_2.
  ///
  /// In en, this message translates to:
  /// **'Click on \"Data API\" in the settings menu'**
  String get setupStep2_2;

  /// No description provided for @setupStep2_3.
  ///
  /// In en, this message translates to:
  /// **'Find \"Project URL\" - looks like: https://xxxxx.supabase.co'**
  String get setupStep2_3;

  /// No description provided for @setupStep2_4.
  ///
  /// In en, this message translates to:
  /// **'Find the \"anon\" key under \"Project API keys\"'**
  String get setupStep2_4;

  /// No description provided for @setupAboutApiKeys.
  ///
  /// In en, this message translates to:
  /// **'About API Keys'**
  String get setupAboutApiKeys;

  /// No description provided for @setupAboutApiKeysContent.
  ///
  /// In en, this message translates to:
  /// **'The anon key is safe for apps. It works with Row Level Security policies.'**
  String get setupAboutApiKeysContent;

  /// No description provided for @setupCredentialsTip.
  ///
  /// In en, this message translates to:
  /// **'Tip: You can click the copy button next to each value in Supabase to copy it to clipboard.'**
  String get setupCredentialsTip;

  /// No description provided for @setupIHaveCredentials.
  ///
  /// In en, this message translates to:
  /// **'I Have My Credentials'**
  String get setupIHaveCredentials;

  /// No description provided for @setupStep3Title.
  ///
  /// In en, this message translates to:
  /// **'Step 3: Enter Your Credentials'**
  String get setupStep3Title;

  /// No description provided for @setupProjectUrl.
  ///
  /// In en, this message translates to:
  /// **'Project URL'**
  String get setupProjectUrl;

  /// No description provided for @setupAnonKey.
  ///
  /// In en, this message translates to:
  /// **'Anon Key'**
  String get setupAnonKey;

  /// No description provided for @setupValidateAndContinue.
  ///
  /// In en, this message translates to:
  /// **'Validate & Continue'**
  String get setupValidateAndContinue;

  /// No description provided for @setupStep4Title.
  ///
  /// In en, this message translates to:
  /// **'Step 4: Database Setup'**
  String get setupStep4Title;

  /// No description provided for @setupManualSetupRequired.
  ///
  /// In en, this message translates to:
  /// **'Manual Setup Required'**
  String get setupManualSetupRequired;

  /// No description provided for @setupDatabaseManualContent.
  ///
  /// In en, this message translates to:
  /// **'The database tables need to be created manually. This is a one-time setup.'**
  String get setupDatabaseManualContent;

  /// No description provided for @setupStep4_1.
  ///
  /// In en, this message translates to:
  /// **'In Supabase, go to \"SQL Editor\" in the sidebar'**
  String get setupStep4_1;

  /// No description provided for @setupStep4_2.
  ///
  /// In en, this message translates to:
  /// **'Click \"New query\"'**
  String get setupStep4_2;

  /// No description provided for @setupStep4_3.
  ///
  /// In en, this message translates to:
  /// **'Copy and paste the following SQL:'**
  String get setupStep4_3;

  /// No description provided for @setupStep4_4.
  ///
  /// In en, this message translates to:
  /// **'Click \"Run\" to execute the query'**
  String get setupStep4_4;

  /// No description provided for @setupStep4_5.
  ///
  /// In en, this message translates to:
  /// **'You should see \"Success. No rows returned\"'**
  String get setupStep4_5;

  /// No description provided for @setupSqlCopied.
  ///
  /// In en, this message translates to:
  /// **'SQL copied to clipboard'**
  String get setupSqlCopied;

  /// No description provided for @setupCheckingDatabase.
  ///
  /// In en, this message translates to:
  /// **'Checking database...'**
  String get setupCheckingDatabase;

  /// No description provided for @setupIveRunSql.
  ///
  /// In en, this message translates to:
  /// **'I\'ve Run the SQL'**
  String get setupIveRunSql;

  /// No description provided for @setupCheckDatabase.
  ///
  /// In en, this message translates to:
  /// **'Check Database'**
  String get setupCheckDatabase;

  /// No description provided for @setupStep5Title.
  ///
  /// In en, this message translates to:
  /// **'Step 5: Storage Setup'**
  String get setupStep5Title;

  /// No description provided for @setupStorageManualContent.
  ///
  /// In en, this message translates to:
  /// **'Create the storage bucket for your artwork images.'**
  String get setupStorageManualContent;

  /// No description provided for @setupStep5_1.
  ///
  /// In en, this message translates to:
  /// **'In Supabase, go to \"Storage\" in the sidebar'**
  String get setupStep5_1;

  /// No description provided for @setupStep5_2.
  ///
  /// In en, this message translates to:
  /// **'Click \"New bucket\"'**
  String get setupStep5_2;

  /// No description provided for @setupStep5_3.
  ///
  /// In en, this message translates to:
  /// **'Name it exactly: artworks'**
  String get setupStep5_3;

  /// No description provided for @setupStep5_4.
  ///
  /// In en, this message translates to:
  /// **'Leave \"Public bucket\" OFF (recommended)'**
  String get setupStep5_4;

  /// No description provided for @setupStep5_5.
  ///
  /// In en, this message translates to:
  /// **'Click \"Create bucket\"'**
  String get setupStep5_5;

  /// No description provided for @setupAddStoragePolicy.
  ///
  /// In en, this message translates to:
  /// **'Add Storage Policy'**
  String get setupAddStoragePolicy;

  /// No description provided for @setupAddStoragePolicyContent.
  ///
  /// In en, this message translates to:
  /// **'Click bucket → Policies → New Policy → \"For full customization\" → Name: allow_all → Check all operations → Save.'**
  String get setupAddStoragePolicyContent;

  /// No description provided for @setupSettingUpStorage.
  ///
  /// In en, this message translates to:
  /// **'Setting up storage...'**
  String get setupSettingUpStorage;

  /// No description provided for @setupSetupStorage.
  ///
  /// In en, this message translates to:
  /// **'Setup Storage'**
  String get setupSetupStorage;

  /// No description provided for @setupComplete.
  ///
  /// In en, this message translates to:
  /// **'Setup Complete!'**
  String get setupComplete;

  /// No description provided for @setupCompleteDescription.
  ///
  /// In en, this message translates to:
  /// **'Artive is now connected to your Supabase project.\n\nYou can start adding your artworks!'**
  String get setupCompleteDescription;

  /// No description provided for @setupQuickTips.
  ///
  /// In en, this message translates to:
  /// **'Quick Tips'**
  String get setupQuickTips;

  /// No description provided for @setupQuickTipsContent.
  ///
  /// In en, this message translates to:
  /// **'• Tap the + button to add your first artwork\n• Add multiple images with different tags (main, reference, scan)\n• Use search and filters to find artworks quickly\n• Change language in Settings'**
  String get setupQuickTipsContent;

  /// No description provided for @setupStartUsing.
  ///
  /// In en, this message translates to:
  /// **'Start Using Artive'**
  String get setupStartUsing;

  /// No description provided for @openInBrowser.
  ///
  /// In en, this message translates to:
  /// **'Open in Browser'**
  String get openInBrowser;

  /// No description provided for @couldNotOpenBrowser.
  ///
  /// In en, this message translates to:
  /// **'Could not open browser automatically. Please copy this URL and open it manually:'**
  String get couldNotOpenBrowser;

  /// No description provided for @urlCopied.
  ///
  /// In en, this message translates to:
  /// **'URL copied to clipboard'**
  String get urlCopied;

  /// No description provided for @backupRestore.
  ///
  /// In en, this message translates to:
  /// **'Backup & Restore'**
  String get backupRestore;

  /// No description provided for @backupRestoreSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Export or import your data'**
  String get backupRestoreSubtitle;

  /// No description provided for @createBackup.
  ///
  /// In en, this message translates to:
  /// **'Create Backup'**
  String get createBackup;

  /// No description provided for @createBackupDescription.
  ///
  /// In en, this message translates to:
  /// **'Export all your artworks and images to a ZIP file that you can save or share.'**
  String get createBackupDescription;

  /// No description provided for @restoreBackup.
  ///
  /// In en, this message translates to:
  /// **'Restore Backup'**
  String get restoreBackup;

  /// No description provided for @restoreBackupDescription.
  ///
  /// In en, this message translates to:
  /// **'Import artworks and images from a previously created backup file.'**
  String get restoreBackupDescription;

  /// No description provided for @restoreBackupConfirm.
  ///
  /// In en, this message translates to:
  /// **'How would you like to restore the backup?'**
  String get restoreBackupConfirm;

  /// No description provided for @restoreMerge.
  ///
  /// In en, this message translates to:
  /// **'Merge with existing'**
  String get restoreMerge;

  /// No description provided for @restoreReplace.
  ///
  /// In en, this message translates to:
  /// **'Replace all'**
  String get restoreReplace;

  /// No description provided for @backupCreated.
  ///
  /// In en, this message translates to:
  /// **'Backup created successfully'**
  String get backupCreated;

  /// No description provided for @restoreComplete.
  ///
  /// In en, this message translates to:
  /// **'{count} artworks restored'**
  String restoreComplete(int count);

  /// No description provided for @backupNote.
  ///
  /// In en, this message translates to:
  /// **'Backups include all artwork data and images. Store them safely!'**
  String get backupNote;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'bn', 'de', 'en', 'es', 'fr', 'hi', 'id', 'it', 'ja', 'ko', 'nl', 'pl', 'pt', 'ru', 'th', 'tr', 'vi', 'zh'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'bn': return AppLocalizationsBn();
    case 'de': return AppLocalizationsDe();
    case 'en': return AppLocalizationsEn();
    case 'es': return AppLocalizationsEs();
    case 'fr': return AppLocalizationsFr();
    case 'hi': return AppLocalizationsHi();
    case 'id': return AppLocalizationsId();
    case 'it': return AppLocalizationsIt();
    case 'ja': return AppLocalizationsJa();
    case 'ko': return AppLocalizationsKo();
    case 'nl': return AppLocalizationsNl();
    case 'pl': return AppLocalizationsPl();
    case 'pt': return AppLocalizationsPt();
    case 'ru': return AppLocalizationsRu();
    case 'th': return AppLocalizationsTh();
    case 'tr': return AppLocalizationsTr();
    case 'vi': return AppLocalizationsVi();
    case 'zh': return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
