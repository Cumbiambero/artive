// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appTitle => 'Artive';

  @override
  String get artworks => 'Prace';

  @override
  String get addArtwork => 'Dodaj pracę';

  @override
  String get editArtwork => 'Edytuj pracę';

  @override
  String get deleteArtwork => 'Usuń pracę';

  @override
  String get name => 'Nazwa';

  @override
  String get description => 'Opis';

  @override
  String get descriptionOptional => 'Opis (opcjonalnie)';

  @override
  String get date => 'Utworzono';

  @override
  String get month => 'Miesiąc';

  @override
  String get year => 'Rok';

  @override
  String get dimension => 'Wymiary';

  @override
  String get dimensionHint => 'np., 50x70 cm';

  @override
  String get medium => 'Technika';

  @override
  String get mediumHint => 'np., Olej na płótnie';

  @override
  String get images => 'Obrazy';

  @override
  String get addImage => 'Dodaj obraz';

  @override
  String get photo => 'Główny';

  @override
  String get reference => 'Foto referencja';

  @override
  String get scan => 'Skan';

  @override
  String get save => 'Zapisz';

  @override
  String get cancel => 'Anuluj';

  @override
  String get delete => 'Usuń';

  @override
  String get confirmDelete => 'Czy na pewno chcesz usunąć tę pracę?';

  @override
  String get confirmDeleteImage => 'Czy na pewno chcesz usunąć ten obraz?';

  @override
  String get yes => 'Tak';

  @override
  String get no => 'Nie';

  @override
  String get settings => 'Ustawienia';

  @override
  String get language => 'Język';

  @override
  String get about => 'O aplikacji';

  @override
  String get version => 'Wersja';

  @override
  String get search => 'Szukaj';

  @override
  String get searchHint => 'Dokładne wyszukiwanie';

  @override
  String get noArtworks => 'Brak prac';

  @override
  String get noArtworksHint => 'Dotknij + aby dodać pierwszą pracę';

  @override
  String get loading => 'Ładowanie...';

  @override
  String get error => 'Błąd';

  @override
  String get retry => 'Ponów';

  @override
  String get uploadingImage => 'Przesyłanie obrazu...';

  @override
  String get imageUploaded => 'Obraz przesłany';

  @override
  String get imageFailed => 'Przesyłanie obrazu nie powiodło się';

  @override
  String get artworkSaved => 'Praca zapisana';

  @override
  String get artworkDeleted => 'Praca usunięta';

  @override
  String get requiredField => 'To pole jest wymagane';

  @override
  String get invalidYear => 'Wprowadź prawidłowy rok';

  @override
  String get invalidMonth => 'Wprowadź miesiąc od 1 do 12';

  @override
  String get selectImageTag => 'Wybierz typ obrazu';

  @override
  String get gallery => 'Galeria';

  @override
  String get camera => 'Aparat';

  @override
  String get selectSource => 'Wybierz źródło obrazu';

  @override
  String get id => 'ID';

  @override
  String get createdAt => 'Wysłano';

  @override
  String get filterByMedium => 'Filtruj według techniki';

  @override
  String get filterByYear => 'Filtruj według roku';

  @override
  String get allMedia => 'Wszystkie techniki';

  @override
  String get allYears => 'Wszystkie lata';

  @override
  String get sortBy => 'Sortuj według';

  @override
  String get sortByName => 'Nazwy';

  @override
  String get sortByDate => 'Daty';

  @override
  String get sortByCreated => 'Utworzenia';

  @override
  String get ascending => 'Rosnąco';

  @override
  String get descending => 'Malejąco';

  @override
  String get back => 'Wstecz';

  @override
  String get close => 'Zamknij';

  @override
  String get copy => 'Kopiuj';

  @override
  String get skip => 'Pomiń';

  @override
  String get done => 'Gotowe';

  @override
  String get reset => 'Resetuj';

  @override
  String get cloudConnection => 'Połączenie z chmurą';

  @override
  String get cloudConnectionSubtitle => 'Ponownie skonfiguruj połączenie Supabase';

  @override
  String get resetCloudConnection => 'Resetuj połączenie z chmurą';

  @override
  String get resetCloudConnectionMessage => 'Spowoduje to odłączenie aplikacji od projektu Supabase. Będziesz musiał ponownie uruchomić kreator konfiguracji.\n\nTwoje dane w Supabase NIE zostaną usunięte.';

  @override
  String get restartToReconfigure => 'Uruchom ponownie aplikację, aby skonfigurować';

  @override
  String get databasePaused => 'Baza danych wstrzymana';

  @override
  String get databasePausedMessage => 'Twój projekt Supabase został wstrzymany z powodu braku aktywności.\n\nAby przywrócić:\n1. Przejdź do supabase.com/dashboard\n2. Wybierz swój projekt\n3. Kliknij \"Przywróć projekt\"\n\nTo zajmuje około 1 minuty.';

  @override
  String get setupTitle => 'Konfiguracja Artive';

  @override
  String get setupWelcome => 'Witaj w Artive!';

  @override
  String get setupWelcomeDescription => 'Ten kreator pomoże Ci skonfigurować chmurę dla katalogu prac.\n\nTwoje prace i obrazy będą bezpiecznie przechowywane w Supabase, darmowej platformie chmurowej.\n\nKonfiguracja trwa około 5 minut.';

  @override
  String get setupWhatIsSupabase => 'Czym jest Supabase?';

  @override
  String get setupWhatIsSupabaseContent => 'Supabase to darmowa usługa backendowa open-source. Zapewnia bazę danych i przechowywanie plików dla Twojej aplikacji.';

  @override
  String get setupYourData => 'Twoje dane, Twoja kontrola';

  @override
  String get setupYourDataContent => 'Tworzysz własne konto Supabase. Twoje dane należą do Ciebie i tylko Ty masz do nich dostęp.';

  @override
  String get setupGetStarted => 'Rozpocznij';

  @override
  String get setupStep1Title => 'Krok 1: Utwórz projekt Supabase';

  @override
  String get setupStep1_1 => 'Przejdź do supabase.com i utwórz darmowe konto';

  @override
  String get setupOpenSupabase => 'Otwórz Supabase';

  @override
  String get setupStep1_2 => 'Kliknij \"Nowy projekt\" w panelu';

  @override
  String get setupStep1_3 => 'Wybierz nazwę dla projektu (np. \"artive\")';

  @override
  String get setupStep1_4 => 'Ustaw bezpieczne hasło bazy danych (zapisz je!)';

  @override
  String get setupStep1_5 => 'Wybierz region blisko Ciebie';

  @override
  String get setupStep1_6 => 'Kliknij \"Utwórz nowy projekt\" i poczekaj';

  @override
  String get setupFreeTier => 'Darmowy plan';

  @override
  String get setupFreeTierContent => 'Darmowy plan Supabase zawiera 500MB bazy danych i 1GB przechowywania plików - wystarczająco na tysiące prac!';

  @override
  String get setupProjectCreated => 'Projekt utworzony';

  @override
  String get setupStep2Title => 'Krok 2: Pobierz dane uwierzytelniające';

  @override
  String get setupStep2_1 => 'W projekcie Supabase przejdź do \"Ustawienia projektu\" (ikona koła zębatego)';

  @override
  String get setupStep2_2 => 'Kliknij \"Data API\" w menu ustawień';

  @override
  String get setupStep2_3 => 'Znajdź \"Project URL\" - wygląda jak: https://xxxxx.supabase.co';

  @override
  String get setupStep2_4 => 'Znajdź klucz \"anon\" w \"Project API keys\"';

  @override
  String get setupAboutApiKeys => 'O kluczach API';

  @override
  String get setupAboutApiKeysContent => 'Klucz anon jest bezpieczny dla aplikacji. Działa z politykami Row Level Security.';

  @override
  String get setupCredentialsTip => 'Wskazówka: Możesz kliknąć przycisk kopiowania obok każdej wartości w Supabase.';

  @override
  String get setupIHaveCredentials => 'Mam dane uwierzytelniające';

  @override
  String get setupStep3Title => 'Krok 3: Wprowadź dane uwierzytelniające';

  @override
  String get setupProjectUrl => 'URL projektu';

  @override
  String get setupAnonKey => 'Klucz Anon';

  @override
  String get setupValidateAndContinue => 'Zweryfikuj i kontynuuj';

  @override
  String get setupStep4Title => 'Krok 4: Konfiguracja bazy danych';

  @override
  String get setupManualSetupRequired => 'Wymagana ręczna konfiguracja';

  @override
  String get setupDatabaseManualContent => 'Tabele bazy danych muszą być utworzone ręcznie. To jednorazowa konfiguracja.';

  @override
  String get setupStep4_1 => 'W Supabase przejdź do \"SQL Editor\" na pasku bocznym';

  @override
  String get setupStep4_2 => 'Kliknij \"Nowe zapytanie\"';

  @override
  String get setupStep4_3 => 'Skopiuj i wklej następujący SQL:';

  @override
  String get setupStep4_4 => 'Kliknij \"Uruchom\", aby wykonać zapytanie';

  @override
  String get setupStep4_5 => 'Powinieneś zobaczyć \"Sukces. Nie zwrócono wierszy\"';

  @override
  String get setupSqlCopied => 'SQL skopiowany do schowka';

  @override
  String get setupCheckingDatabase => 'Sprawdzanie bazy danych...';

  @override
  String get setupIveRunSql => 'Wykonałem SQL';

  @override
  String get setupCheckDatabase => 'Sprawdź bazę danych';

  @override
  String get setupStep5Title => 'Krok 5: Konfiguracja przechowywania';

  @override
  String get setupStorageManualContent => 'Utwórz zasobnik przechowywania dla obrazów prac.';

  @override
  String get setupStep5_1 => 'W Supabase przejdź do \"Storage\" na pasku bocznym';

  @override
  String get setupStep5_2 => 'Kliknij \"Nowy zasobnik\"';

  @override
  String get setupStep5_3 => 'Nazwij go dokładnie: artworks';

  @override
  String get setupStep5_4 => 'Pozostaw \"Publiczny zasobnik\" WYŁĄCZONY (zalecane)';

  @override
  String get setupStep5_5 => 'Kliknij \"Utwórz zasobnik\"';

  @override
  String get setupAddStoragePolicy => 'Dodaj politykę przechowywania';

  @override
  String get setupAddStoragePolicyContent => 'Kliknij zasobnik → Polityki → Nowa polityka → \"Pełna personalizacja\" → Nazwa: allow_all → Zaznacz wszystkie operacje → Zapisz.';

  @override
  String get setupSettingUpStorage => 'Konfigurowanie przechowywania...';

  @override
  String get setupSetupStorage => 'Skonfiguruj przechowywanie';

  @override
  String get setupComplete => 'Konfiguracja zakończona!';

  @override
  String get setupCompleteDescription => 'Artive jest teraz połączony z Twoim projektem Supabase.\n\nMożesz zacząć dodawać swoje prace!';

  @override
  String get setupQuickTips => 'Szybkie wskazówki';

  @override
  String get setupQuickTipsContent => '• Dotknij +, aby dodać pierwszą pracę\n• Dodaj wiele obrazów z różnymi tagami (główny, referencja, skan)\n• Używaj wyszukiwania i filtrów, aby szybko znajdować prace\n• Zmień język w Ustawieniach';

  @override
  String get setupStartUsing => 'Zacznij używać Artive';

  @override
  String get openInBrowser => 'Otwórz w przeglądarce';

  @override
  String get couldNotOpenBrowser => 'Nie można automatycznie otworzyć przeglądarki. Skopiuj ten URL i otwórz ręcznie:';

  @override
  String get urlCopied => 'URL skopiowany do schowka';

  @override
  String get backupRestore => 'Kopia zapasowa i przywracanie';

  @override
  String get backupRestoreSubtitle => 'Eksportuj lub importuj swoje dane';

  @override
  String get createBackup => 'Utwórz kopię zapasową';

  @override
  String get createBackupDescription => 'Wyeksportuj wszystkie swoje prace i obrazy do pliku ZIP, który możesz zapisać lub udostępnić.';

  @override
  String get restoreBackup => 'Przywróć kopię zapasową';

  @override
  String get restoreBackupDescription => 'Importuj prace i obrazy z wcześniej utworzonego pliku kopii zapasowej.';

  @override
  String get restoreBackupConfirm => 'Jak chcesz przywrócić kopię zapasową?';

  @override
  String get restoreMerge => 'Połącz z istniejącymi';

  @override
  String get restoreReplace => 'Zastąp wszystko';

  @override
  String get backupCreated => 'Kopia zapasowa utworzona pomyślnie';

  @override
  String restoreComplete(int count) {
    return 'Przywrócono $count prac';
  }

  @override
  String get backupNote => 'Kopie zapasowe zawierają wszystkie dane dzieł i obrazy. Przechowuj je bezpiecznie!';

  @override
  String itemsSelected(int count) {
    return 'Zaznaczono: $count';
  }

  @override
  String confirmDeleteMultiple(int count) {
    return 'Usunąć $count dzieło/dzieła?';
  }

  @override
  String artworksDeleted(int count) {
    return 'Usunięto $count dzieło/dzieła';
  }

  @override
  String get selectAll => 'Zaznacz wszystko';
}
