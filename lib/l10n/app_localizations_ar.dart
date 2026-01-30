// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'Artive';

  @override
  String get artworks => 'الأعمال الفنية';

  @override
  String get addArtwork => 'إضافة عمل فني';

  @override
  String get editArtwork => 'تعديل العمل الفني';

  @override
  String get deleteArtwork => 'حذف العمل الفني';

  @override
  String get name => 'الاسم';

  @override
  String get description => 'الوصف';

  @override
  String get descriptionOptional => 'الوصف (اختياري)';

  @override
  String get date => 'أنشئ في';

  @override
  String get month => 'الشهر';

  @override
  String get year => 'السنة';

  @override
  String get dimension => 'الأبعاد';

  @override
  String get dimensionHint => 'مثال: 50x70 سم';

  @override
  String get medium => 'الوسيط';

  @override
  String get mediumHint => 'مثال: زيت على قماش';

  @override
  String get images => 'الصور';

  @override
  String get addImage => 'إضافة صورة';

  @override
  String get photo => 'رئيسية';

  @override
  String get reference => 'مرجع صورة';

  @override
  String get scan => 'مسح ضوئي';

  @override
  String get save => 'حفظ';

  @override
  String get cancel => 'إلغاء';

  @override
  String get delete => 'حذف';

  @override
  String get confirmDelete => 'هل أنت متأكد من حذف هذا العمل الفني؟';

  @override
  String get confirmDeleteImage => 'هل أنت متأكد من حذف هذه الصورة؟';

  @override
  String get yes => 'نعم';

  @override
  String get no => 'لا';

  @override
  String get settings => 'الإعدادات';

  @override
  String get language => 'اللغة';

  @override
  String get about => 'حول';

  @override
  String get version => 'الإصدار';

  @override
  String get search => 'بحث';

  @override
  String get searchHint => 'بحث مطابق تماماً';

  @override
  String get noArtworks => 'لا توجد أعمال فنية بعد';

  @override
  String get noArtworksHint => 'اضغط + لإضافة عملك الفني الأول';

  @override
  String get loading => 'جاري التحميل...';

  @override
  String get error => 'خطأ';

  @override
  String get retry => 'إعادة المحاولة';

  @override
  String get uploadingImage => 'جاري رفع الصورة...';

  @override
  String get imageUploaded => 'تم رفع الصورة';

  @override
  String get imageFailed => 'فشل رفع الصورة';

  @override
  String get artworkSaved => 'تم حفظ العمل الفني';

  @override
  String get artworkDeleted => 'تم حذف العمل الفني';

  @override
  String get requiredField => 'هذا الحقل مطلوب';

  @override
  String get invalidYear => 'يرجى إدخال سنة صحيحة';

  @override
  String get invalidMonth => 'يرجى إدخال شهر بين 1 و 12';

  @override
  String get selectImageTag => 'اختر نوع الصورة';

  @override
  String get gallery => 'المعرض';

  @override
  String get camera => 'الكاميرا';

  @override
  String get selectSource => 'اختر مصدر الصورة';

  @override
  String get id => 'المعرف';

  @override
  String get createdAt => 'تم الرفع في';

  @override
  String get filterByMedium => 'تصفية حسب الوسيط';

  @override
  String get filterByYear => 'تصفية حسب السنة';

  @override
  String get allMedia => 'جميع الوسائط';

  @override
  String get allYears => 'جميع السنوات';

  @override
  String get sortBy => 'ترتيب حسب';

  @override
  String get sortByName => 'الاسم';

  @override
  String get sortByDate => 'التاريخ';

  @override
  String get sortByCreated => 'تاريخ الإنشاء';

  @override
  String get ascending => 'تصاعدي';

  @override
  String get descending => 'تنازلي';

  @override
  String get back => 'رجوع';

  @override
  String get close => 'إغلاق';

  @override
  String get copy => 'نسخ';

  @override
  String get skip => 'تخطي';

  @override
  String get done => 'تم';

  @override
  String get reset => 'إعادة تعيين';

  @override
  String get cloudConnection => 'اتصال السحابة';

  @override
  String get cloudConnectionSubtitle => 'إعادة تكوين اتصال Supabase';

  @override
  String get resetCloudConnection => 'إعادة تعيين اتصال السحابة';

  @override
  String get resetCloudConnectionMessage => 'سيؤدي هذا إلى فصل التطبيق عن مشروع Supabase الخاص بك. ستحتاج إلى تشغيل معالج الإعداد مرة أخرى.\n\nلن يتم حذف بياناتك في Supabase.';

  @override
  String get restartToReconfigure => 'يرجى إعادة تشغيل التطبيق لإعادة التكوين';

  @override
  String get databasePaused => 'قاعدة البيانات متوقفة';

  @override
  String get databasePausedMessage => 'تم إيقاف مشروع Supabase الخاص بك بسبب عدم النشاط.\n\nللاستعادة:\n1. اذهب إلى supabase.com/dashboard\n2. حدد مشروعك\n3. انقر على \"استعادة المشروع\"\n\nيستغرق هذا حوالي دقيقة واحدة.';

  @override
  String get setupTitle => 'إعداد Artive';

  @override
  String get setupWelcome => 'مرحباً بك في Artive!';

  @override
  String get setupWelcomeDescription => 'سيساعدك هذا المعالج في إعداد التخزين السحابي لكتالوج أعمالك الفنية.\n\nسيتم تخزين أعمالك وصورك بأمان في Supabase، منصة سحابية مجانية.\n\nيستغرق الإعداد حوالي 5 دقائق.';

  @override
  String get setupWhatIsSupabase => 'ما هو Supabase؟';

  @override
  String get setupWhatIsSupabaseContent => 'Supabase هي خدمة خلفية مجانية ومفتوحة المصدر. توفر قاعدة بيانات وتخزين ملفات لتطبيقك.';

  @override
  String get setupYourData => 'بياناتك، تحت سيطرتك';

  @override
  String get setupYourDataContent => 'أنت تنشئ حساب Supabase الخاص بك. بياناتك ملكك وأنت فقط من يمكنه الوصول إليها.';

  @override
  String get setupGetStarted => 'ابدأ';

  @override
  String get setupStep1Title => 'الخطوة 1: إنشاء مشروع Supabase';

  @override
  String get setupStep1_1 => 'اذهب إلى supabase.com وأنشئ حساباً مجانياً';

  @override
  String get setupOpenSupabase => 'فتح Supabase';

  @override
  String get setupStep1_2 => 'انقر على \"مشروع جديد\" في لوحة التحكم';

  @override
  String get setupStep1_3 => 'اختر اسماً لمشروعك (مثل \"artive\")';

  @override
  String get setupStep1_4 => 'عيّن كلمة مرور آمنة لقاعدة البيانات (احفظها!)';

  @override
  String get setupStep1_5 => 'حدد منطقة قريبة منك';

  @override
  String get setupStep1_6 => 'انقر على \"إنشاء مشروع جديد\" وانتظر';

  @override
  String get setupFreeTier => 'المستوى المجاني';

  @override
  String get setupFreeTierContent => 'يتضمن المستوى المجاني من Supabase قاعدة بيانات 500 ميجابايت و1 جيجابايت تخزين ملفات - كافٍ لآلاف الأعمال الفنية!';

  @override
  String get setupProjectCreated => 'تم إنشاء المشروع';

  @override
  String get setupStep2Title => 'الخطوة 2: الحصول على بيانات الاعتماد';

  @override
  String get setupStep2_1 => 'في مشروع Supabase الخاص بك، اذهب إلى \"إعدادات المشروع\" (أيقونة الترس)';

  @override
  String get setupStep2_2 => 'انقر على \"Data API\" في قائمة الإعدادات';

  @override
  String get setupStep2_3 => 'ابحث عن \"Project URL\" - يبدو مثل: https://xxxxx.supabase.co';

  @override
  String get setupStep2_4 => 'ابحث عن مفتاح \"anon\" تحت \"Project API keys\"';

  @override
  String get setupAboutApiKeys => 'حول مفاتيح API';

  @override
  String get setupAboutApiKeysContent => 'مفتاح anon آمن للتطبيقات. يعمل مع سياسات أمان مستوى الصف.';

  @override
  String get setupCredentialsTip => 'نصيحة: يمكنك النقر على زر النسخ بجوار كل قيمة في Supabase.';

  @override
  String get setupIHaveCredentials => 'لدي بيانات الاعتماد';

  @override
  String get setupStep3Title => 'الخطوة 3: إدخال بيانات الاعتماد';

  @override
  String get setupProjectUrl => 'رابط المشروع';

  @override
  String get setupAnonKey => 'مفتاح Anon';

  @override
  String get setupValidateAndContinue => 'التحقق والمتابعة';

  @override
  String get setupStep4Title => 'الخطوة 4: إعداد قاعدة البيانات';

  @override
  String get setupManualSetupRequired => 'الإعداد اليدوي مطلوب';

  @override
  String get setupDatabaseManualContent => 'يجب إنشاء جداول قاعدة البيانات يدوياً. هذا إعداد لمرة واحدة.';

  @override
  String get setupStep4_1 => 'في Supabase، اذهب إلى \"SQL Editor\" في الشريط الجانبي';

  @override
  String get setupStep4_2 => 'انقر على \"استعلام جديد\"';

  @override
  String get setupStep4_3 => 'انسخ والصق SQL التالي:';

  @override
  String get setupStep4_4 => 'انقر على \"تشغيل\" لتنفيذ الاستعلام';

  @override
  String get setupStep4_5 => 'يجب أن ترى \"نجاح. لم يتم إرجاع صفوف\"';

  @override
  String get setupSqlCopied => 'تم نسخ SQL إلى الحافظة';

  @override
  String get setupCheckingDatabase => 'جاري فحص قاعدة البيانات...';

  @override
  String get setupIveRunSql => 'لقد قمت بتشغيل SQL';

  @override
  String get setupCheckDatabase => 'فحص قاعدة البيانات';

  @override
  String get setupStep5Title => 'الخطوة 5: إعداد التخزين';

  @override
  String get setupStorageManualContent => 'أنشئ حاوية التخزين لصور أعمالك الفنية.';

  @override
  String get setupStep5_1 => 'في Supabase، اذهب إلى \"Storage\" في الشريط الجانبي';

  @override
  String get setupStep5_2 => 'انقر على \"حاوية جديدة\"';

  @override
  String get setupStep5_3 => 'سمّها بالضبط: artworks';

  @override
  String get setupStep5_4 => 'اترك \"حاوية عامة\" مغلقة (موصى به)';

  @override
  String get setupStep5_5 => 'انقر على \"إنشاء حاوية\"';

  @override
  String get setupAddStoragePolicy => 'إضافة سياسة التخزين';

  @override
  String get setupAddStoragePolicyContent => 'انقر على الحاوية ← السياسات ← سياسة جديدة ← \"للتخصيص الكامل\" ← الاسم: allow_all ← حدد جميع العمليات ← حفظ.';

  @override
  String get setupSettingUpStorage => 'جاري إعداد التخزين...';

  @override
  String get setupSetupStorage => 'إعداد التخزين';

  @override
  String get setupComplete => 'اكتمل الإعداد!';

  @override
  String get setupCompleteDescription => 'Artive متصل الآن بمشروع Supabase الخاص بك.\n\nيمكنك البدء بإضافة أعمالك الفنية!';

  @override
  String get setupQuickTips => 'نصائح سريعة';

  @override
  String get setupQuickTipsContent => '• اضغط على + لإضافة عملك الفني الأول\n• أضف صوراً متعددة بعلامات مختلفة (رئيسية، مرجعية، مسح)\n• استخدم البحث والفلاتر للعثور على الأعمال بسرعة\n• غيّر اللغة في الإعدادات';

  @override
  String get setupStartUsing => 'ابدأ استخدام Artive';

  @override
  String get openInBrowser => 'فتح في المتصفح';

  @override
  String get couldNotOpenBrowser => 'تعذر فتح المتصفح تلقائياً. يرجى نسخ هذا الرابط وفتحه يدوياً:';

  @override
  String get urlCopied => 'تم نسخ الرابط إلى الحافظة';

  @override
  String get backupRestore => 'النسخ الاحتياطي والاستعادة';

  @override
  String get backupRestoreSubtitle => 'تصدير أو استيراد بياناتك';

  @override
  String get createBackup => 'إنشاء نسخة احتياطية';

  @override
  String get createBackupDescription => 'قم بتصدير جميع أعمالك الفنية والصور إلى ملف ZIP يمكنك حفظه أو مشاركته.';

  @override
  String get restoreBackup => 'استعادة النسخة الاحتياطية';

  @override
  String get restoreBackupDescription => 'قم باستيراد الأعمال الفنية والصور من ملف نسخة احتياطية تم إنشاؤه مسبقًا.';

  @override
  String get restoreBackupConfirm => 'كيف تريد استعادة النسخة الاحتياطية؟';

  @override
  String get restoreMerge => 'دمج مع الموجودة';

  @override
  String get restoreReplace => 'استبدال الكل';

  @override
  String get backupCreated => 'تم إنشاء النسخة الاحتياطية بنجاح';

  @override
  String restoreComplete(int count) {
    return 'تم استعادة $count عمل فني';
  }

  @override
  String get backupNote => 'تتضمن النسخ الاحتياطية جميع بيانات الأعمال الفنية والصور. احفظها بأمان!';
}
