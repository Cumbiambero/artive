// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Bengali Bangla (`bn`).
class AppLocalizationsBn extends AppLocalizations {
  AppLocalizationsBn([String locale = 'bn']) : super(locale);

  @override
  String get appTitle => 'Artive';

  @override
  String get artworks => 'শিল্পকর্ম';

  @override
  String get addArtwork => 'শিল্পকর্ম যোগ করুন';

  @override
  String get editArtwork => 'শিল্পকর্ম সম্পাদনা করুন';

  @override
  String get deleteArtwork => 'শিল্পকর্ম মুছুন';

  @override
  String get name => 'নাম';

  @override
  String get description => 'বিবরণ';

  @override
  String get descriptionOptional => 'বিবরণ (ঐচ্ছিক)';

  @override
  String get date => 'তৈরি হয়েছে';

  @override
  String get month => 'মাস';

  @override
  String get year => 'বছর';

  @override
  String get dimension => 'মাত্রা';

  @override
  String get dimensionHint => 'যেমন, ৫০x৭০ সেমি';

  @override
  String get medium => 'মাধ্যম';

  @override
  String get mediumHint => 'যেমন, ক্যানভাসে তেল';

  @override
  String get images => 'ছবি';

  @override
  String get addImage => 'ছবি যোগ করুন';

  @override
  String get photo => 'প্রধান';

  @override
  String get reference => 'ফটো রেফারেন্স';

  @override
  String get scan => 'স্ক্যান';

  @override
  String get save => 'সংরক্ষণ';

  @override
  String get cancel => 'বাতিল';

  @override
  String get delete => 'মুছুন';

  @override
  String get confirmDelete => 'আপনি কি এই শিল্পকর্মটি মুছে ফেলতে চান?';

  @override
  String get confirmDeleteImage => 'আপনি কি এই ছবিটি মুছে ফেলতে চান?';

  @override
  String get yes => 'হ্যাঁ';

  @override
  String get no => 'না';

  @override
  String get settings => 'সেটিংস';

  @override
  String get language => 'ভাষা';

  @override
  String get about => 'সম্পর্কে';

  @override
  String get version => 'সংস্করণ';

  @override
  String get search => 'অনুসন্ধান';

  @override
  String get searchHint => 'সঠিক মিল অনুসন্ধান';

  @override
  String get noArtworks => 'এখনো কোন শিল্পকর্ম নেই';

  @override
  String get noArtworksHint => 'আপনার প্রথম শিল্পকর্ম যোগ করতে + চাপুন';

  @override
  String get loading => 'লোড হচ্ছে...';

  @override
  String get error => 'ত্রুটি';

  @override
  String get retry => 'পুনরায় চেষ্টা করুন';

  @override
  String get uploadingImage => 'ছবি আপলোড হচ্ছে...';

  @override
  String get imageUploaded => 'ছবি আপলোড হয়েছে';

  @override
  String get imageFailed => 'ছবি আপলোড ব্যর্থ';

  @override
  String get artworkSaved => 'শিল্পকর্ম সংরক্ষিত';

  @override
  String get artworkDeleted => 'শিল্পকর্ম মুছে ফেলা হয়েছে';

  @override
  String get requiredField => 'এই ক্ষেত্রটি প্রয়োজন';

  @override
  String get invalidYear => 'অনুগ্রহ করে একটি বৈধ বছর লিখুন';

  @override
  String get invalidMonth => 'অনুগ্রহ করে ১ থেকে ১২ এর মধ্যে মাস লিখুন';

  @override
  String get selectImageTag => 'ছবির ধরন নির্বাচন করুন';

  @override
  String get gallery => 'গ্যালারি';

  @override
  String get camera => 'ক্যামেরা';

  @override
  String get selectSource => 'ছবির উৎস নির্বাচন করুন';

  @override
  String get id => 'আইডি';

  @override
  String get createdAt => 'আপলোড হয়েছে';

  @override
  String get filterByMedium => 'মাধ্যম দিয়ে ফিল্টার';

  @override
  String get filterByYear => 'বছর দিয়ে ফিল্টার';

  @override
  String get allMedia => 'সব মাধ্যম';

  @override
  String get allYears => 'সব বছর';

  @override
  String get sortBy => 'সাজান';

  @override
  String get sortByName => 'নাম';

  @override
  String get sortByDate => 'তারিখ';

  @override
  String get sortByCreated => 'তৈরির সময়';

  @override
  String get ascending => 'ক্রমবর্ধমান';

  @override
  String get descending => 'ক্রমহ্রাসমান';

  @override
  String get back => 'পেছনে';

  @override
  String get close => 'বন্ধ করুন';

  @override
  String get copy => 'কপি করুন';

  @override
  String get skip => 'এড়িয়ে যান';

  @override
  String get done => 'সম্পন্ন';

  @override
  String get reset => 'রিসেট';

  @override
  String get cloudConnection => 'ক্লাউড সংযোগ';

  @override
  String get cloudConnectionSubtitle => 'Supabase সংযোগ পুনরায় কনফিগার করুন';

  @override
  String get resetCloudConnection => 'ক্লাউড সংযোগ রিসেট করুন';

  @override
  String get resetCloudConnectionMessage => 'এটি অ্যাপটিকে আপনার Supabase প্রকল্প থেকে সংযোগ বিচ্ছিন্ন করবে। আপনাকে সেটআপ উইজার্ড আবার চালাতে হবে।\n\nSupabase-এ আপনার ডেটা মুছে যাবে না।';

  @override
  String get restartToReconfigure => 'পুনরায় কনফিগার করতে অ্যাপ রিস্টার্ট করুন';

  @override
  String get databasePaused => 'ডেটাবেস বিরতিতে';

  @override
  String get databasePausedMessage => 'আপনার Supabase প্রকল্প নিষ্ক্রিয়তার কারণে বিরতিতে আছে।\n\nপুনরুদ্ধার করতে:\n1. supabase.com/dashboard-এ যান\n2. আপনার প্রকল্প নির্বাচন করুন\n3. \"প্রকল্প পুনরুদ্ধার করুন\" ক্লিক করুন\n\nএটি প্রায় ১ মিনিট সময় নেয়।';

  @override
  String get setupTitle => 'Artive সেটআপ';

  @override
  String get setupWelcome => 'Artive-এ স্বাগতম!';

  @override
  String get setupWelcomeDescription => 'এই উইজার্ড আপনার শিল্পকর্ম ক্যাটালগের জন্য ক্লাউড স্টোরেজ সেট আপ করতে সাহায্য করবে।\n\nআপনার শিল্পকর্ম এবং ছবি Supabase-এ নিরাপদে সংরক্ষিত হবে, একটি বিনামূল্যের ক্লাউড প্ল্যাটফর্ম।\n\nসেটআপে প্রায় ৫ মিনিট সময় লাগে।';

  @override
  String get setupWhatIsSupabase => 'Supabase কী?';

  @override
  String get setupWhatIsSupabaseContent => 'Supabase একটি বিনামূল্যের ওপেন-সোর্স ব্যাকএন্ড সেবা। এটি আপনার অ্যাপের জন্য ডেটাবেস এবং ফাইল স্টোরেজ প্রদান করে।';

  @override
  String get setupYourData => 'আপনার ডেটা, আপনার নিয়ন্ত্রণ';

  @override
  String get setupYourDataContent => 'আপনি নিজের Supabase অ্যাকাউন্ট তৈরি করেন। আপনার ডেটা আপনার এবং শুধুমাত্র আপনারই অ্যাক্সেস আছে।';

  @override
  String get setupGetStarted => 'শুরু করুন';

  @override
  String get setupStep1Title => 'ধাপ ১: Supabase প্রকল্প তৈরি করুন';

  @override
  String get setupStep1_1 => 'supabase.com-এ যান এবং বিনামূল্যে অ্যাকাউন্ট তৈরি করুন';

  @override
  String get setupOpenSupabase => 'Supabase খুলুন';

  @override
  String get setupStep1_2 => 'ড্যাশবোর্ডে \"নতুন প্রকল্প\" ক্লিক করুন';

  @override
  String get setupStep1_3 => 'আপনার প্রকল্পের জন্য নাম নির্বাচন করুন (যেমন \"Artive\")';

  @override
  String get setupStep1_4 => 'নিরাপদ ডেটাবেস পাসওয়ার্ড সেট করুন (এটি সংরক্ষণ করুন!)';

  @override
  String get setupStep1_5 => 'আপনার কাছের অঞ্চল নির্বাচন করুন';

  @override
  String get setupStep1_6 => '\"নতুন প্রকল্প তৈরি করুন\" ক্লিক করুন এবং অপেক্ষা করুন';

  @override
  String get setupFreeTier => 'বিনামূল্যে টায়ার';

  @override
  String get setupFreeTierContent => 'Supabase বিনামূল্যে টায়ারে ৫০০MB ডেটাবেস এবং ১GB ফাইল স্টোরেজ অন্তর্ভুক্ত - হাজার হাজার শিল্পকর্মের জন্য যথেষ্ট!';

  @override
  String get setupProjectCreated => 'প্রকল্প তৈরি হয়েছে';

  @override
  String get setupStep2Title => 'ধাপ ২: আপনার শংসাপত্র পান';

  @override
  String get setupStep2_1 => 'আপনার Supabase প্রকল্পে \"প্রকল্প সেটিংস\" (গিয়ার আইকন)-এ যান';

  @override
  String get setupStep2_2 => 'সেটিংস মেনুতে \"Data API\" ক্লিক করুন';

  @override
  String get setupStep2_3 => '\"Project URL\" খুঁজুন - এরকম দেখতে: https://xxxxx.supabase.co';

  @override
  String get setupStep2_4 => '\"Project API keys\"-এর অধীনে \"anon\" কী খুঁজুন';

  @override
  String get setupAboutApiKeys => 'API কী সম্পর্কে';

  @override
  String get setupAboutApiKeysContent => 'anon কী অ্যাপের জন্য নিরাপদ। এটি Row Level Security নীতির সাথে কাজ করে।';

  @override
  String get setupCredentialsTip => 'টিপ: আপনি Supabase-এ প্রতিটি মানের পাশে কপি বাটনে ক্লিক করতে পারেন।';

  @override
  String get setupIHaveCredentials => 'আমার শংসাপত্র আছে';

  @override
  String get setupStep3Title => 'ধাপ ৩: আপনার শংসাপত্র লিখুন';

  @override
  String get setupProjectUrl => 'প্রকল্প URL';

  @override
  String get setupAnonKey => 'Anon কী';

  @override
  String get setupValidateAndContinue => 'যাচাই করুন এবং চালিয়ে যান';

  @override
  String get setupStep4Title => 'ধাপ ৪: ডেটাবেস সেটআপ';

  @override
  String get setupManualSetupRequired => 'ম্যানুয়াল সেটআপ প্রয়োজন';

  @override
  String get setupDatabaseManualContent => 'ডেটাবেস টেবিলগুলি ম্যানুয়ালি তৈরি করতে হবে। এটি একবারের সেটআপ।';

  @override
  String get setupStep4_1 => 'Supabase-এ সাইডবারে \"SQL Editor\"-এ যান';

  @override
  String get setupStep4_2 => '\"নতুন কোয়েরি\" ক্লিক করুন';

  @override
  String get setupStep4_3 => 'নিম্নলিখিত SQL কপি এবং পেস্ট করুন:';

  @override
  String get setupStep4_4 => 'কোয়েরি চালাতে \"Run\" ক্লিক করুন';

  @override
  String get setupStep4_5 => 'আপনি \"সফল। কোনো সারি ফেরত আসেনি\" দেখতে পাবেন';

  @override
  String get setupSqlCopied => 'SQL ক্লিপবোর্ডে কপি হয়েছে';

  @override
  String get setupCheckingDatabase => 'ডেটাবেস পরীক্ষা করা হচ্ছে...';

  @override
  String get setupIveRunSql => 'আমি SQL চালিয়েছি';

  @override
  String get setupCheckDatabase => 'ডেটাবেস পরীক্ষা করুন';

  @override
  String get setupStep5Title => 'ধাপ ৫: স্টোরেজ সেটআপ';

  @override
  String get setupStorageManualContent => 'আপনার শিল্পকর্ম ছবির জন্য স্টোরেজ বাকেট তৈরি করুন।';

  @override
  String get setupStep5_1 => 'Supabase-এ সাইডবারে \"Storage\"-এ যান';

  @override
  String get setupStep5_2 => '\"নতুন বাকেট\" ক্লিক করুন';

  @override
  String get setupStep5_3 => 'ঠিক এই নাম দিন: artworks';

  @override
  String get setupStep5_4 => '\"পাবলিক বাকেট\" বন্ধ রাখুন (প্রস্তাবিত)';

  @override
  String get setupStep5_5 => '\"বাকেট তৈরি করুন\" ক্লিক করুন';

  @override
  String get setupAddStoragePolicy => 'স্টোরেজ নীতি যোগ করুন';

  @override
  String get setupAddStoragePolicyContent => 'বাকেটে ক্লিক করুন → নীতি → নতুন নীতি → \"সম্পূর্ণ কাস্টমাইজেশনের জন্য\" → নাম: allow_all → সব অপারেশন চেক করুন → সংরক্ষণ করুন।';

  @override
  String get setupSettingUpStorage => 'স্টোরেজ সেট আপ হচ্ছে...';

  @override
  String get setupSetupStorage => 'স্টোরেজ সেটআপ';

  @override
  String get setupComplete => 'সেটআপ সম্পূর্ণ!';

  @override
  String get setupCompleteDescription => 'Artive এখন আপনার Supabase প্রকল্পের সাথে সংযুক্ত।\n\nআপনি আপনার শিল্পকর্ম যোগ করা শুরু করতে পারেন!';

  @override
  String get setupQuickTips => 'দ্রুত টিপস';

  @override
  String get setupQuickTipsContent => '• আপনার প্রথম শিল্পকর্ম যোগ করতে + চাপুন\n• বিভিন্ন ট্যাগ সহ একাধিক ছবি যোগ করুন (প্রধান, রেফারেন্স, স্ক্যান)\n• দ্রুত শিল্পকর্ম খুঁজতে অনুসন্ধান এবং ফিল্টার ব্যবহার করুন\n• সেটিংসে ভাষা পরিবর্তন করুন';

  @override
  String get setupStartUsing => 'Artive ব্যবহার শুরু করুন';

  @override
  String get openInBrowser => 'ব্রাউজারে খুলুন';

  @override
  String get couldNotOpenBrowser => 'স্বয়ংক্রিয়ভাবে ব্রাউজার খোলা যায়নি। অনুগ্রহ করে এই URL কপি করুন এবং ম্যানুয়ালি খুলুন:';

  @override
  String get urlCopied => 'URL ক্লিপবোর্ডে কপি হয়েছে';

  @override
  String get backupRestore => 'ব্যাকআপ এবং পুনরুদ্ধার';

  @override
  String get backupRestoreSubtitle => 'আপনার ডেটা রপ্তানি করুন বা আমদানি করুন';

  @override
  String get createBackup => 'ব্যাকআপ তৈরি করুন';

  @override
  String get createBackupDescription => 'আপনার সমস্ত শিল্পকর্ম এবং ছবিগুলি একটি ZIP ফাইলে রপ্তানি করুন যা আপনি সংরক্ষণ বা শেয়ার করতে পারেন।';

  @override
  String get restoreBackup => 'ব্যাকআপ পুনরুদ্ধার করুন';

  @override
  String get restoreBackupDescription => 'পূর্বে তৈরি করা ব্যাকআপ ফাইল থেকে শিল্পকর্ম এবং ছবি আমদানি করুন।';

  @override
  String get restoreBackupConfirm => 'আপনি কিভাবে ব্যাকআপ পুনরুদ্ধার করতে চান?';

  @override
  String get restoreMerge => 'বিদ্যমান ডেটার সাথে মিশ্রিত করুন';

  @override
  String get restoreReplace => 'সব প্রতিস্থাপন করুন';

  @override
  String get backupCreated => 'ব্যাকআপ সফলভাবে তৈরি হয়েছে';

  @override
  String restoreComplete(int count) {
    return '$countটি শিল্পকর্ম পুনরুদ্ধার করা হয়েছে';
  }

  @override
  String get backupNote => 'ব্যাকআপে সমস্ত শিল্পকর্ম এবং ছবির ডেটা অন্তর্ভুক্ত রয়েছে। সেগুলি নিরাপদে সংরক্ষণ করুন!';

  @override
  String itemsSelected(int count) {
    return '$countটি নির্বাচিত';
  }

  @override
  String confirmDeleteMultiple(int count) {
    return '$countটি শিল্পকর্ম মুছবেন?';
  }

  @override
  String artworksDeleted(int count) {
    return '$countটি শিল্পকর্ম মুছে ফেলা হয়েছে';
  }

  @override
  String get selectAll => 'সব নির্বাচন করুন';
}
