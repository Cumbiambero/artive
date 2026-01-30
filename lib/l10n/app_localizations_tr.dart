// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'Artive';

  @override
  String get artworks => 'Eserler';

  @override
  String get addArtwork => 'Eser ekle';

  @override
  String get editArtwork => 'Eseri düzenle';

  @override
  String get deleteArtwork => 'Eseri sil';

  @override
  String get name => 'Ad';

  @override
  String get description => 'Açıklama';

  @override
  String get descriptionOptional => 'Açıklama (isteğe bağlı)';

  @override
  String get date => 'Oluşturuldu';

  @override
  String get month => 'Ay';

  @override
  String get year => 'Yıl';

  @override
  String get dimension => 'Boyut';

  @override
  String get dimensionHint => 'örn., 50x70 cm';

  @override
  String get medium => 'Teknik';

  @override
  String get mediumHint => 'örn., Tuval üzerine yağlı boya';

  @override
  String get images => 'Görseller';

  @override
  String get addImage => 'Görsel ekle';

  @override
  String get photo => 'Ana';

  @override
  String get reference => 'Fotoğraf referansı';

  @override
  String get scan => 'Tarama';

  @override
  String get save => 'Kaydet';

  @override
  String get cancel => 'İptal';

  @override
  String get delete => 'Sil';

  @override
  String get confirmDelete => 'Bu eseri silmek istediğinizden emin misiniz?';

  @override
  String get confirmDeleteImage => 'Bu görseli silmek istediğinizden emin misiniz?';

  @override
  String get yes => 'Evet';

  @override
  String get no => 'Hayır';

  @override
  String get settings => 'Ayarlar';

  @override
  String get language => 'Dil';

  @override
  String get about => 'Hakkında';

  @override
  String get version => 'Sürüm';

  @override
  String get search => 'Ara';

  @override
  String get searchHint => 'Tam eşleşme araması';

  @override
  String get noArtworks => 'Henüz eser yok';

  @override
  String get noArtworksHint => 'İlk eserinizi eklemek için + düğmesine dokunun';

  @override
  String get loading => 'Yükleniyor...';

  @override
  String get error => 'Hata';

  @override
  String get retry => 'Tekrar dene';

  @override
  String get uploadingImage => 'Görsel yükleniyor...';

  @override
  String get imageUploaded => 'Görsel yüklendi';

  @override
  String get imageFailed => 'Görsel yüklenemedi';

  @override
  String get artworkSaved => 'Eser kaydedildi';

  @override
  String get artworkDeleted => 'Eser silindi';

  @override
  String get requiredField => 'Bu alan zorunludur';

  @override
  String get invalidYear => 'Lütfen geçerli bir yıl girin';

  @override
  String get invalidMonth => 'Lütfen 1 ile 12 arasında bir ay girin';

  @override
  String get selectImageTag => 'Görsel türü seçin';

  @override
  String get gallery => 'Galeri';

  @override
  String get camera => 'Kamera';

  @override
  String get selectSource => 'Görsel kaynağı seçin';

  @override
  String get id => 'ID';

  @override
  String get createdAt => 'Yüklendi';

  @override
  String get filterByMedium => 'Tekniğe göre filtrele';

  @override
  String get filterByYear => 'Yıla göre filtrele';

  @override
  String get allMedia => 'Tüm teknikler';

  @override
  String get allYears => 'Tüm yıllar';

  @override
  String get sortBy => 'Sırala';

  @override
  String get sortByName => 'Ad';

  @override
  String get sortByDate => 'Tarih';

  @override
  String get sortByCreated => 'Oluşturulma';

  @override
  String get ascending => 'Artan';

  @override
  String get descending => 'Azalan';

  @override
  String get back => 'Geri';

  @override
  String get close => 'Kapat';

  @override
  String get copy => 'Kopyala';

  @override
  String get skip => 'Atla';

  @override
  String get done => 'Tamam';

  @override
  String get reset => 'Sıfırla';

  @override
  String get cloudConnection => 'Bulut Bağlantısı';

  @override
  String get cloudConnectionSubtitle => 'Supabase bağlantısını yeniden yapılandır';

  @override
  String get resetCloudConnection => 'Bulut Bağlantısını Sıfırla';

  @override
  String get resetCloudConnectionMessage => 'Bu, uygulamanın Supabase projenizle bağlantısını kesecektir. Kurulum sihirbazını tekrar çalıştırmanız gerekecek.\n\nSupabase\'deki verileriniz SİLİNMEYECEKTİR.';

  @override
  String get restartToReconfigure => 'Yeniden yapılandırmak için uygulamayı yeniden başlatın';

  @override
  String get databasePaused => 'Veritabanı Duraklatıldı';

  @override
  String get databasePausedMessage => 'Supabase projeniz hareketsizlik nedeniyle duraklatıldı.\n\nGeri yüklemek için:\n1. supabase.com/dashboard adresine gidin\n2. Projenizi seçin\n3. \"Projeyi geri yükle\" tıklayın\n\nBu yaklaşık 1 dakika sürer.';

  @override
  String get setupTitle => 'Artive Kurulumu';

  @override
  String get setupWelcome => 'Artive\'e Hoş Geldiniz!';

  @override
  String get setupWelcomeDescription => 'Bu sihirbaz, sanat eseri kataloğunuz için bulut depolamayı kurmanıza yardımcı olacak.\n\nEserleriniz ve görseller, ücretsiz bir bulut platformu olan Supabase\'de güvenle depolanacak.\n\nKurulum yaklaşık 5 dakika sürer.';

  @override
  String get setupWhatIsSupabase => 'Supabase Nedir?';

  @override
  String get setupWhatIsSupabaseContent => 'Supabase, ücretsiz, açık kaynaklı bir backend hizmetidir. Uygulamanız için veritabanı ve dosya depolama sağlar.';

  @override
  String get setupYourData => 'Verileriniz, Kontrolünüz';

  @override
  String get setupYourDataContent => 'Kendi Supabase hesabınızı oluşturursunuz. Verileriniz size aittir ve yalnızca siz erişebilirsiniz.';

  @override
  String get setupGetStarted => 'Başla';

  @override
  String get setupStep1Title => 'Adım 1: Supabase Projesi Oluşturun';

  @override
  String get setupStep1_1 => 'supabase.com adresine gidin ve ücretsiz hesap oluşturun';

  @override
  String get setupOpenSupabase => 'Supabase\'i Aç';

  @override
  String get setupStep1_2 => 'Panelde \"Yeni Proje\" tıklayın';

  @override
  String get setupStep1_3 => 'Projeniz için bir ad seçin (örn. \"artive\")';

  @override
  String get setupStep1_4 => 'Güvenli bir veritabanı şifresi belirleyin (kaydedin!)';

  @override
  String get setupStep1_5 => 'Size yakın bir bölge seçin';

  @override
  String get setupStep1_6 => '\"Yeni proje oluştur\" tıklayın ve bekleyin';

  @override
  String get setupFreeTier => 'Ücretsiz Katman';

  @override
  String get setupFreeTierContent => 'Supabase ücretsiz katmanı 500MB veritabanı ve 1GB dosya depolama içerir - binlerce eser için yeterli!';

  @override
  String get setupProjectCreated => 'Proje Oluşturuldu';

  @override
  String get setupStep2Title => 'Adım 2: Kimlik Bilgilerinizi Alın';

  @override
  String get setupStep2_1 => 'Supabase projenizde \"Proje Ayarları\"na (dişli simgesi) gidin';

  @override
  String get setupStep2_2 => 'Ayarlar menüsünde \"Data API\" tıklayın';

  @override
  String get setupStep2_3 => '\"Project URL\" bulun - şöyle görünür: https://xxxxx.supabase.co';

  @override
  String get setupStep2_4 => '\"Project API keys\" altında \"anon\" anahtarını bulun';

  @override
  String get setupAboutApiKeys => 'API Anahtarları Hakkında';

  @override
  String get setupAboutApiKeysContent => 'Anon anahtarı uygulamalar için güvenlidir. Row Level Security politikalarıyla çalışır.';

  @override
  String get setupCredentialsTip => 'İpucu: Supabase\'de her değerin yanındaki kopyala düğmesine tıklayabilirsiniz.';

  @override
  String get setupIHaveCredentials => 'Kimlik Bilgilerim Var';

  @override
  String get setupStep3Title => 'Adım 3: Kimlik Bilgilerinizi Girin';

  @override
  String get setupProjectUrl => 'Proje URL';

  @override
  String get setupAnonKey => 'Anon Anahtarı';

  @override
  String get setupValidateAndContinue => 'Doğrula ve Devam Et';

  @override
  String get setupStep4Title => 'Adım 4: Veritabanı Kurulumu';

  @override
  String get setupManualSetupRequired => 'Manuel Kurulum Gerekli';

  @override
  String get setupDatabaseManualContent => 'Veritabanı tabloları manuel olarak oluşturulmalıdır. Bu tek seferlik bir kurulumdur.';

  @override
  String get setupStep4_1 => 'Supabase\'de yan çubuktaki \"SQL Editor\"a gidin';

  @override
  String get setupStep4_2 => '\"Yeni sorgu\" tıklayın';

  @override
  String get setupStep4_3 => 'Aşağıdaki SQL\'i kopyalayıp yapıştırın:';

  @override
  String get setupStep4_4 => 'Sorguyu çalıştırmak için \"Çalıştır\" tıklayın';

  @override
  String get setupStep4_5 => '\"Başarılı. Satır döndürülmedi\" görmelisiniz';

  @override
  String get setupSqlCopied => 'SQL panoya kopyalandı';

  @override
  String get setupCheckingDatabase => 'Veritabanı kontrol ediliyor...';

  @override
  String get setupIveRunSql => 'SQL\'i Çalıştırdım';

  @override
  String get setupCheckDatabase => 'Veritabanını Kontrol Et';

  @override
  String get setupStep5Title => 'Adım 5: Depolama Kurulumu';

  @override
  String get setupStorageManualContent => 'Eser görselleriniz için depolama kovası oluşturun.';

  @override
  String get setupStep5_1 => 'Supabase\'de yan çubuktaki \"Storage\"a gidin';

  @override
  String get setupStep5_2 => '\"Yeni kova\" tıklayın';

  @override
  String get setupStep5_3 => 'Tam olarak şu adı verin: artworks';

  @override
  String get setupStep5_4 => '\"Genel kova\" KAPALI bırakın (önerilir)';

  @override
  String get setupStep5_5 => '\"Kova oluştur\" tıklayın';

  @override
  String get setupAddStoragePolicy => 'Depolama Politikası Ekle';

  @override
  String get setupAddStoragePolicyContent => 'Kovaya tıklayın → Politikalar → Yeni Politika → \"Tam özelleştirme için\" → Ad: allow_all → Tüm işlemleri işaretleyin → Kaydet.';

  @override
  String get setupSettingUpStorage => 'Depolama kuruluyor...';

  @override
  String get setupSetupStorage => 'Depolamayı Kur';

  @override
  String get setupComplete => 'Kurulum Tamamlandı!';

  @override
  String get setupCompleteDescription => 'Artive artık Supabase projenize bağlı.\n\nEserlerinizi eklemeye başlayabilirsiniz!';

  @override
  String get setupQuickTips => 'Hızlı İpuçları';

  @override
  String get setupQuickTipsContent => '• İlk eserinizi eklemek için + düğmesine dokunun\n• Farklı etiketlerle birden fazla görsel ekleyin (ana, referans, tarama)\n• Eserleri hızlı bulmak için arama ve filtreleri kullanın\n• Ayarlarda dili değiştirin';

  @override
  String get setupStartUsing => 'Artive\'i Kullanmaya Başla';

  @override
  String get openInBrowser => 'Tarayıcıda Aç';

  @override
  String get couldNotOpenBrowser => 'Tarayıcı otomatik açılamadı. Lütfen bu URL\'yi kopyalayın ve manuel olarak açın:';

  @override
  String get urlCopied => 'URL panoya kopyalandı';

  @override
  String get backupRestore => 'Yedekleme ve geri yükleme';

  @override
  String get backupRestoreSubtitle => 'Verilerinizi dışa aktarın veya içe aktarın';

  @override
  String get createBackup => 'Yedek oluştur';

  @override
  String get createBackupDescription => 'Tüm eserlerinizi ve görsellerinizi kaydedebileceğiniz veya paylaşabileceğiniz bir ZIP dosyasına aktarın.';

  @override
  String get restoreBackup => 'Yedeği geri yükle';

  @override
  String get restoreBackupDescription => 'Daha önce oluşturulmuş bir yedekleme dosyasından eserlerinizi ve görsellerinizi içe aktarın.';

  @override
  String get restoreBackupConfirm => 'Yedeği nasıl geri yüklemek istersiniz?';

  @override
  String get restoreMerge => 'Mevcut olanlarla birleştir';

  @override
  String get restoreReplace => 'Tümünü değiştir';

  @override
  String get backupCreated => 'Yedek başarıyla oluşturuldu';

  @override
  String restoreComplete(int count) {
    return '$count eser geri yüklendi';
  }

  @override
  String get backupNote => 'Yedekler tüm eser ve görsel verilerini içerir. Onları güvenli bir şekilde saklayın!';

  @override
  String itemsSelected(int count) {
    return '$count seçildi';
  }

  @override
  String confirmDeleteMultiple(int count) {
    return '$count eser silinsin mi?';
  }

  @override
  String artworksDeleted(int count) {
    return '$count eser silindi';
  }

  @override
  String get selectAll => 'Tümünü seç';
}
