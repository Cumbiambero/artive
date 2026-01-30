// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'Artive';

  @override
  String get artworks => 'कलाकृतियाँ';

  @override
  String get addArtwork => 'कलाकृति जोड़ें';

  @override
  String get editArtwork => 'कलाकृति संपादित करें';

  @override
  String get deleteArtwork => 'कलाकृति हटाएं';

  @override
  String get name => 'नाम';

  @override
  String get description => 'विवरण';

  @override
  String get descriptionOptional => 'विवरण (वैकल्पिक)';

  @override
  String get date => 'बनाया गया';

  @override
  String get month => 'महीना';

  @override
  String get year => 'वर्ष';

  @override
  String get dimension => 'आयाम';

  @override
  String get dimensionHint => 'जैसे, 50x70 सेमी';

  @override
  String get medium => 'माध्यम';

  @override
  String get mediumHint => 'जैसे, कैनवास पर तेल';

  @override
  String get images => 'छवियां';

  @override
  String get addImage => 'छवि जोड़ें';

  @override
  String get photo => 'मुख्य';

  @override
  String get reference => 'फोटो संदर्भ';

  @override
  String get scan => 'स्कैन';

  @override
  String get save => 'सहेजें';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get delete => 'हटाएं';

  @override
  String get confirmDelete => 'क्या आप वाकई इस कलाकृति को हटाना चाहते हैं?';

  @override
  String get confirmDeleteImage => 'क्या आप वाकई इस छवि को हटाना चाहते हैं?';

  @override
  String get yes => 'हां';

  @override
  String get no => 'नहीं';

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get language => 'भाषा';

  @override
  String get about => 'के बारे में';

  @override
  String get version => 'संस्करण';

  @override
  String get search => 'खोजें';

  @override
  String get searchHint => 'सटीक मिलान खोज';

  @override
  String get noArtworks => 'अभी तक कोई कलाकृति नहीं';

  @override
  String get noArtworksHint => 'अपनी पहली कलाकृति जोड़ने के लिए + दबाएं';

  @override
  String get loading => 'लोड हो रहा है...';

  @override
  String get error => 'त्रुटि';

  @override
  String get retry => 'पुनः प्रयास करें';

  @override
  String get uploadingImage => 'छवि अपलोड हो रही है...';

  @override
  String get imageUploaded => 'छवि अपलोड हो गई';

  @override
  String get imageFailed => 'छवि अपलोड विफल';

  @override
  String get artworkSaved => 'कलाकृति सहेजी गई';

  @override
  String get artworkDeleted => 'कलाकृति हटाई गई';

  @override
  String get requiredField => 'यह फ़ील्ड आवश्यक है';

  @override
  String get invalidYear => 'कृपया एक मान्य वर्ष दर्ज करें';

  @override
  String get invalidMonth => 'कृपया 1 से 12 के बीच महीना दर्ज करें';

  @override
  String get selectImageTag => 'छवि प्रकार चुनें';

  @override
  String get gallery => 'गैलरी';

  @override
  String get camera => 'कैमरा';

  @override
  String get selectSource => 'छवि स्रोत चुनें';

  @override
  String get id => 'आईडी';

  @override
  String get createdAt => 'अपलोड किया गया';

  @override
  String get filterByMedium => 'माध्यम से फ़िल्टर करें';

  @override
  String get filterByYear => 'वर्ष से फ़िल्टर करें';

  @override
  String get allMedia => 'सभी माध्यम';

  @override
  String get allYears => 'सभी वर्ष';

  @override
  String get sortBy => 'इसके अनुसार क्रमबद्ध करें';

  @override
  String get sortByName => 'नाम';

  @override
  String get sortByDate => 'तारीख';

  @override
  String get sortByCreated => 'निर्मित';

  @override
  String get ascending => 'आरोही';

  @override
  String get descending => 'अवरोही';

  @override
  String get back => 'वापस';

  @override
  String get close => 'बंद करें';

  @override
  String get copy => 'कॉपी करें';

  @override
  String get skip => 'छोड़ें';

  @override
  String get done => 'हो गया';

  @override
  String get reset => 'रीसेट करें';

  @override
  String get cloudConnection => 'क्लाउड कनेक्शन';

  @override
  String get cloudConnectionSubtitle => 'Supabase कनेक्शन पुनः कॉन्फ़िगर करें';

  @override
  String get resetCloudConnection => 'क्लाउड कनेक्शन रीसेट करें';

  @override
  String get resetCloudConnectionMessage => 'यह ऐप को आपके Supabase प्रोजेक्ट से डिस्कनेक्ट कर देगा। आपको सेटअप विज़ार्ड फिर से चलाना होगा।\n\nSupabase में आपका डेटा हटाया नहीं जाएगा।';

  @override
  String get restartToReconfigure => 'कृपया पुनः कॉन्फ़िगर करने के लिए ऐप रीस्टार्ट करें';

  @override
  String get databasePaused => 'डेटाबेस रुका हुआ है';

  @override
  String get databasePausedMessage => 'आपका Supabase प्रोजेक्ट निष्क्रियता के कारण रुका हुआ है।\n\nपुनर्स्थापित करने के लिए:\n1. supabase.com/dashboard पर जाएं\n2. अपना प्रोजेक्ट चुनें\n3. \"प्रोजेक्ट पुनर्स्थापित करें\" पर क्लिक करें\n\nइसमें लगभग 1 मिनट लगता है।';

  @override
  String get setupTitle => 'Artive सेटअप';

  @override
  String get setupWelcome => 'Artive में आपका स्वागत है!';

  @override
  String get setupWelcomeDescription => 'यह विज़ार्ड आपकी कलाकृति कैटलॉग के लिए क्लाउड स्टोरेज सेट करने में मदद करेगा।\n\nआपकी कलाकृतियां और छवियां Supabase में सुरक्षित रूप से संग्रहीत होंगी, एक मुफ्त क्लाउड प्लेटफॉर्म।\n\nसेटअप में लगभग 5 मिनट लगते हैं।';

  @override
  String get setupWhatIsSupabase => 'Supabase क्या है?';

  @override
  String get setupWhatIsSupabaseContent => 'Supabase एक मुफ्त, ओपन-सोर्स बैकएंड सेवा है। यह आपके ऐप के लिए डेटाबेस और फ़ाइल स्टोरेज प्रदान करता है।';

  @override
  String get setupYourData => 'आपका डेटा, आपका नियंत्रण';

  @override
  String get setupYourDataContent => 'आप अपना खुद का Supabase खाता बनाते हैं। आपका डेटा आपका है और केवल आपकी पहुंच है।';

  @override
  String get setupGetStarted => 'शुरू करें';

  @override
  String get setupStep1Title => 'चरण 1: Supabase प्रोजेक्ट बनाएं';

  @override
  String get setupStep1_1 => 'supabase.com पर जाएं और मुफ्त खाता बनाएं';

  @override
  String get setupOpenSupabase => 'Supabase खोलें';

  @override
  String get setupStep1_2 => 'डैशबोर्ड में \"नया प्रोजेक्ट\" पर क्लिक करें';

  @override
  String get setupStep1_3 => 'अपने प्रोजेक्ट के लिए नाम चुनें (जैसे \"artive\")';

  @override
  String get setupStep1_4 => 'सुरक्षित डेटाबेस पासवर्ड सेट करें (इसे सहेजें!)';

  @override
  String get setupStep1_5 => 'अपने पास का क्षेत्र चुनें';

  @override
  String get setupStep1_6 => '\"नया प्रोजेक्ट बनाएं\" पर क्लिक करें और प्रतीक्षा करें';

  @override
  String get setupFreeTier => 'मुफ्त टियर';

  @override
  String get setupFreeTierContent => 'Supabase मुफ्त टियर में 500MB डेटाबेस और 1GB फ़ाइल स्टोरेज शामिल है - हज़ारों कलाकृतियों के लिए पर्याप्त!';

  @override
  String get setupProjectCreated => 'प्रोजेक्ट बनाया गया';

  @override
  String get setupStep2Title => 'चरण 2: अपने क्रेडेंशियल्स प्राप्त करें';

  @override
  String get setupStep2_1 => 'अपने Supabase प्रोजेक्ट में, \"प्रोजेक्ट सेटिंग्स\" (गियर आइकन) पर जाएं';

  @override
  String get setupStep2_2 => 'सेटिंग्स मेनू में \"Data API\" पर क्लिक करें';

  @override
  String get setupStep2_3 => '\"Project URL\" खोजें - जैसे: https://xxxxx.supabase.co';

  @override
  String get setupStep2_4 => '\"Project API keys\" के अंतर्गत \"anon\" कुंजी खोजें';

  @override
  String get setupAboutApiKeys => 'API कुंजियों के बारे में';

  @override
  String get setupAboutApiKeysContent => 'anon कुंजी ऐप्स के लिए सुरक्षित है। यह Row Level Security नीतियों के साथ काम करती है।';

  @override
  String get setupCredentialsTip => 'सुझाव: आप Supabase में प्रत्येक मान के बगल में कॉपी बटन पर क्लिक कर सकते हैं।';

  @override
  String get setupIHaveCredentials => 'मेरे पास क्रेडेंशियल्स हैं';

  @override
  String get setupStep3Title => 'चरण 3: अपने क्रेडेंशियल्स दर्ज करें';

  @override
  String get setupProjectUrl => 'प्रोजेक्ट URL';

  @override
  String get setupAnonKey => 'Anon कुंजी';

  @override
  String get setupValidateAndContinue => 'सत्यापित करें और जारी रखें';

  @override
  String get setupStep4Title => 'चरण 4: डेटाबेस सेटअप';

  @override
  String get setupManualSetupRequired => 'मैन्युअल सेटअप आवश्यक';

  @override
  String get setupDatabaseManualContent => 'डेटाबेस टेबल्स को मैन्युअल रूप से बनाना होगा। यह एक बार का सेटअप है।';

  @override
  String get setupStep4_1 => 'Supabase में, साइडबार में \"SQL Editor\" पर जाएं';

  @override
  String get setupStep4_2 => '\"नई क्वेरी\" पर क्लिक करें';

  @override
  String get setupStep4_3 => 'निम्नलिखित SQL कॉपी और पेस्ट करें:';

  @override
  String get setupStep4_4 => 'क्वेरी चलाने के लिए \"Run\" पर क्लिक करें';

  @override
  String get setupStep4_5 => 'आपको \"सफलता। कोई पंक्तियां नहीं लौटीं\" दिखना चाहिए';

  @override
  String get setupSqlCopied => 'SQL क्लिपबोर्ड पर कॉपी किया गया';

  @override
  String get setupCheckingDatabase => 'डेटाबेस जांच रहे हैं...';

  @override
  String get setupIveRunSql => 'मैंने SQL चला दिया है';

  @override
  String get setupCheckDatabase => 'डेटाबेस जांचें';

  @override
  String get setupStep5Title => 'चरण 5: स्टोरेज सेटअप';

  @override
  String get setupStorageManualContent => 'अपनी कलाकृति छवियों के लिए स्टोरेज बकेट बनाएं।';

  @override
  String get setupStep5_1 => 'Supabase में, साइडबार में \"Storage\" पर जाएं';

  @override
  String get setupStep5_2 => '\"नया बकेट\" पर क्लिक करें';

  @override
  String get setupStep5_3 => 'इसका नाम बिल्कुल रखें: artworks';

  @override
  String get setupStep5_4 => '\"सार्वजनिक बकेट\" बंद रखें (अनुशंसित)';

  @override
  String get setupStep5_5 => '\"बकेट बनाएं\" पर क्लिक करें';

  @override
  String get setupAddStoragePolicy => 'स्टोरेज नीति जोड़ें';

  @override
  String get setupAddStoragePolicyContent => 'बकेट → नीतियां → नई नीति → \"पूर्ण अनुकूलन के लिए\" → नाम: allow_all → सभी ऑपरेशन चेक करें → सहेजें।';

  @override
  String get setupSettingUpStorage => 'स्टोरेज सेट कर रहे हैं...';

  @override
  String get setupSetupStorage => 'स्टोरेज सेटअप';

  @override
  String get setupComplete => 'सेटअप पूर्ण!';

  @override
  String get setupCompleteDescription => 'Artive अब आपके Supabase प्रोजेक्ट से जुड़ा है।\n\nआप अपनी कलाकृतियां जोड़ना शुरू कर सकते हैं!';

  @override
  String get setupQuickTips => 'त्वरित सुझाव';

  @override
  String get setupQuickTipsContent => '• अपनी पहली कलाकृति जोड़ने के लिए + दबाएं\n• विभिन्न टैग के साथ कई छवियां जोड़ें (मुख्य, संदर्भ, स्कैन)\n• कलाकृतियों को जल्दी खोजने के लिए खोज और फ़िल्टर का उपयोग करें\n• सेटिंग्स में भाषा बदलें';

  @override
  String get setupStartUsing => 'Artive का उपयोग शुरू करें';

  @override
  String get openInBrowser => 'ब्राउज़र में खोलें';

  @override
  String get couldNotOpenBrowser => 'ब्राउज़र स्वचालित रूप से नहीं खुल सका। कृपया यह URL कॉपी करें और मैन्युअल रूप से खोलें:';

  @override
  String get urlCopied => 'URL क्लिपबोर्ड पर कॉपी किया गया';

  @override
  String get backupRestore => 'बैकअप और पुनर्स्थापना';

  @override
  String get backupRestoreSubtitle => 'अपना डेटा निर्यात या आयात करें';

  @override
  String get createBackup => 'बैकअप बनाएं';

  @override
  String get createBackupDescription => 'अपनी सभी कलाकृतियों और छवियों को एक ZIP फ़ाइल में निर्यात करें जिसे आप सहेज या साझा कर सकते हैं।';

  @override
  String get restoreBackup => 'बैकअप पुनर्स्थापित करें';

  @override
  String get restoreBackupDescription => 'पहले बनाई गई बैकअप फ़ाइल से कलाकृतियों और छवियों को आयात करें।';

  @override
  String get restoreBackupConfirm => 'आप बैकअप को कैसे पुनर्स्थापित करना चाहते हैं?';

  @override
  String get restoreMerge => 'मौजूदा के साथ मिलाएं';

  @override
  String get restoreReplace => 'सब बदलें';

  @override
  String get backupCreated => 'बैकअप सफलतापूर्वक बनाया गया';

  @override
  String restoreComplete(int count) {
    return '$count कलाकृतियां पुनर्स्थापित हुईं';
  }

  @override
  String get backupNote => 'बैकअप में सभी कलाकृति डेटा और छवियां शामिल हैं। उन्हें सुरक्षित रूप से संग्रहीत करें!';
}
