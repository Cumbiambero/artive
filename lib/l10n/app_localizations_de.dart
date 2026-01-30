// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for German (`de`).
class AppLocalizationsDe extends AppLocalizations {
  AppLocalizationsDe([String locale = 'de']) : super(locale);

  @override
  String get appTitle => 'Artive';

  @override
  String get artworks => 'Kunstwerke';

  @override
  String get addArtwork => 'Kunstwerk hinzufügen';

  @override
  String get editArtwork => 'Kunstwerk bearbeiten';

  @override
  String get deleteArtwork => 'Kunstwerk löschen';

  @override
  String get name => 'Name';

  @override
  String get description => 'Beschreibung';

  @override
  String get descriptionOptional => 'Beschreibung (optional)';

  @override
  String get date => 'Erstellt am';

  @override
  String get month => 'Monat';

  @override
  String get year => 'Jahr';

  @override
  String get dimension => 'Maße';

  @override
  String get dimensionHint => 'z.B., 50x70 cm';

  @override
  String get medium => 'Technik';

  @override
  String get mediumHint => 'z.B., Öl auf Leinwand';

  @override
  String get images => 'Bilder';

  @override
  String get addImage => 'Bild hinzufügen';

  @override
  String get photo => 'Haupt';

  @override
  String get reference => 'Fotoreferenz';

  @override
  String get scan => 'Scan';

  @override
  String get save => 'Speichern';

  @override
  String get cancel => 'Abbrechen';

  @override
  String get delete => 'Löschen';

  @override
  String get confirmDelete => 'Sind Sie sicher, dass Sie dieses Kunstwerk löschen möchten?';

  @override
  String get confirmDeleteImage => 'Sind Sie sicher, dass Sie dieses Bild löschen möchten?';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Nein';

  @override
  String get settings => 'Einstellungen';

  @override
  String get language => 'Sprache';

  @override
  String get about => 'Über';

  @override
  String get version => 'Version';

  @override
  String get search => 'Suchen';

  @override
  String get searchHint => 'Exakte Suche';

  @override
  String get noArtworks => 'Noch keine Kunstwerke';

  @override
  String get noArtworksHint => 'Tippen Sie auf + um Ihr erstes Kunstwerk hinzuzufügen';

  @override
  String get loading => 'Laden...';

  @override
  String get error => 'Fehler';

  @override
  String get retry => 'Wiederholen';

  @override
  String get uploadingImage => 'Bild wird hochgeladen...';

  @override
  String get imageUploaded => 'Bild hochgeladen';

  @override
  String get imageFailed => 'Bild-Upload fehlgeschlagen';

  @override
  String get artworkSaved => 'Kunstwerk gespeichert';

  @override
  String get artworkDeleted => 'Kunstwerk gelöscht';

  @override
  String get requiredField => 'Dieses Feld ist erforderlich';

  @override
  String get invalidYear => 'Bitte geben Sie ein gültiges Jahr ein';

  @override
  String get invalidMonth => 'Bitte geben Sie einen Monat zwischen 1 und 12 ein';

  @override
  String get selectImageTag => 'Bildtyp auswählen';

  @override
  String get gallery => 'Galerie';

  @override
  String get camera => 'Kamera';

  @override
  String get selectSource => 'Bildquelle auswählen';

  @override
  String get id => 'ID';

  @override
  String get createdAt => 'Hochgeladen am';

  @override
  String get filterByMedium => 'Nach Technik filtern';

  @override
  String get filterByYear => 'Nach Jahr filtern';

  @override
  String get allMedia => 'Alle Techniken';

  @override
  String get allYears => 'Alle Jahre';

  @override
  String get sortBy => 'Sortieren nach';

  @override
  String get sortByName => 'Name';

  @override
  String get sortByDate => 'Datum';

  @override
  String get sortByCreated => 'Erstellung';

  @override
  String get ascending => 'Aufsteigend';

  @override
  String get descending => 'Absteigend';

  @override
  String get back => 'Zurück';

  @override
  String get close => 'Schließen';

  @override
  String get copy => 'Kopieren';

  @override
  String get skip => 'Überspringen';

  @override
  String get done => 'Fertig';

  @override
  String get reset => 'Zurücksetzen';

  @override
  String get cloudConnection => 'Cloud-Verbindung';

  @override
  String get cloudConnectionSubtitle => 'Supabase-Verbindung neu konfigurieren';

  @override
  String get resetCloudConnection => 'Cloud-Verbindung zurücksetzen';

  @override
  String get resetCloudConnectionMessage => 'Dadurch wird die App von Ihrem Supabase-Projekt getrennt. Sie müssen den Einrichtungsassistenten erneut ausführen.\n\nIhre Daten in Supabase werden NICHT gelöscht.';

  @override
  String get restartToReconfigure => 'Bitte starten Sie die App neu, um sie neu zu konfigurieren';

  @override
  String get databasePaused => 'Datenbank pausiert';

  @override
  String get databasePausedMessage => 'Ihr Supabase-Projekt wurde wegen Inaktivität pausiert.\n\nZum Wiederherstellen:\n1. Gehen Sie zu supabase.com/dashboard\n2. Wählen Sie Ihr Projekt\n3. Klicken Sie auf \"Projekt wiederherstellen\"\n\nDies dauert etwa 1 Minute.';

  @override
  String get setupTitle => 'Artive Einrichtung';

  @override
  String get setupWelcome => 'Willkommen bei Artive!';

  @override
  String get setupWelcomeDescription => 'Dieser Assistent hilft Ihnen bei der Einrichtung des Cloud-Speichers für Ihren Kunstkatalog.\n\nIhre Kunstwerke und Bilder werden sicher in Supabase, einer kostenlosen Cloud-Plattform, gespeichert.\n\nDie Einrichtung dauert etwa 5 Minuten.';

  @override
  String get setupWhatIsSupabase => 'Was ist Supabase?';

  @override
  String get setupWhatIsSupabaseContent => 'Supabase ist ein kostenloser Open-Source-Backend-Dienst. Er bietet eine Datenbank und Dateispeicher für Ihre App.';

  @override
  String get setupYourData => 'Ihre Daten, Ihre Kontrolle';

  @override
  String get setupYourDataContent => 'Sie erstellen Ihr eigenes Supabase-Konto. Ihre Daten gehören Ihnen und nur Sie haben Zugriff.';

  @override
  String get setupGetStarted => 'Loslegen';

  @override
  String get setupStep1Title => 'Schritt 1: Supabase-Projekt erstellen';

  @override
  String get setupStep1_1 => 'Gehen Sie zu supabase.com und erstellen Sie ein kostenloses Konto';

  @override
  String get setupOpenSupabase => 'Supabase öffnen';

  @override
  String get setupStep1_2 => 'Klicken Sie im Dashboard auf \"Neues Projekt\"';

  @override
  String get setupStep1_3 => 'Wählen Sie einen Namen für Ihr Projekt (z.B. \"artive\")';

  @override
  String get setupStep1_4 => 'Legen Sie ein sicheres Datenbank-Passwort fest (speichern Sie es!)';

  @override
  String get setupStep1_5 => 'Wählen Sie eine Region in Ihrer Nähe';

  @override
  String get setupStep1_6 => 'Klicken Sie auf \"Neues Projekt erstellen\" und warten Sie';

  @override
  String get setupFreeTier => 'Kostenloses Kontingent';

  @override
  String get setupFreeTierContent => 'Das kostenlose Supabase-Kontingent umfasst 500MB Datenbank und 1GB Dateispeicher - genug für Tausende von Kunstwerken!';

  @override
  String get setupProjectCreated => 'Projekt erstellt';

  @override
  String get setupStep2Title => 'Schritt 2: Zugangsdaten abrufen';

  @override
  String get setupStep2_1 => 'Gehen Sie in Ihrem Supabase-Projekt zu \"Projekteinstellungen\" (Zahnrad-Symbol)';

  @override
  String get setupStep2_2 => 'Klicken Sie im Einstellungsmenü auf \"Data API\"';

  @override
  String get setupStep2_3 => 'Suchen Sie \"Project URL\" - sieht aus wie: https://xxxxx.supabase.co';

  @override
  String get setupStep2_4 => 'Suchen Sie den \"anon\" Schlüssel unter \"Project API keys\"';

  @override
  String get setupAboutApiKeys => 'Über API-Schlüssel';

  @override
  String get setupAboutApiKeysContent => 'Der anon-Schlüssel ist sicher für Apps. Er funktioniert mit Row Level Security-Richtlinien.';

  @override
  String get setupCredentialsTip => 'Tipp: Sie können auf die Kopieren-Schaltfläche neben jedem Wert in Supabase klicken.';

  @override
  String get setupIHaveCredentials => 'Ich habe meine Zugangsdaten';

  @override
  String get setupStep3Title => 'Schritt 3: Zugangsdaten eingeben';

  @override
  String get setupProjectUrl => 'Projekt-URL';

  @override
  String get setupAnonKey => 'Anon-Schlüssel';

  @override
  String get setupValidateAndContinue => 'Validieren & Fortfahren';

  @override
  String get setupStep4Title => 'Schritt 4: Datenbank-Einrichtung';

  @override
  String get setupManualSetupRequired => 'Manuelle Einrichtung erforderlich';

  @override
  String get setupDatabaseManualContent => 'Die Datenbanktabellen müssen manuell erstellt werden. Dies ist eine einmalige Einrichtung.';

  @override
  String get setupStep4_1 => 'Gehen Sie in Supabase zu \"SQL Editor\" in der Seitenleiste';

  @override
  String get setupStep4_2 => 'Klicken Sie auf \"Neue Abfrage\"';

  @override
  String get setupStep4_3 => 'Kopieren Sie das folgende SQL und fügen Sie es ein:';

  @override
  String get setupStep4_4 => 'Klicken Sie auf \"Ausführen\", um die Abfrage auszuführen';

  @override
  String get setupStep4_5 => 'Sie sollten \"Erfolg. Keine Zeilen zurückgegeben\" sehen';

  @override
  String get setupSqlCopied => 'SQL in die Zwischenablage kopiert';

  @override
  String get setupCheckingDatabase => 'Datenbank wird überprüft...';

  @override
  String get setupIveRunSql => 'Ich habe das SQL ausgeführt';

  @override
  String get setupCheckDatabase => 'Datenbank überprüfen';

  @override
  String get setupStep5Title => 'Schritt 5: Speicher-Einrichtung';

  @override
  String get setupStorageManualContent => 'Erstellen Sie den Speicher-Bucket für Ihre Kunstwerk-Bilder.';

  @override
  String get setupStep5_1 => 'Gehen Sie in Supabase zu \"Storage\" in der Seitenleiste';

  @override
  String get setupStep5_2 => 'Klicken Sie auf \"Neuer Bucket\"';

  @override
  String get setupStep5_3 => 'Benennen Sie ihn genau: artworks';

  @override
  String get setupStep5_4 => 'Lassen Sie \"Öffentlicher Bucket\" AUS (empfohlen)';

  @override
  String get setupStep5_5 => 'Klicken Sie auf \"Bucket erstellen\"';

  @override
  String get setupAddStoragePolicy => 'Speicherrichtlinie hinzufügen';

  @override
  String get setupAddStoragePolicyContent => 'Klicken Sie auf Bucket → Richtlinien → Neue Richtlinie → \"Für vollständige Anpassung\" → Name: allow_all → Alle Operationen aktivieren → Speichern.';

  @override
  String get setupSettingUpStorage => 'Speicher wird eingerichtet...';

  @override
  String get setupSetupStorage => 'Speicher einrichten';

  @override
  String get setupComplete => 'Einrichtung abgeschlossen!';

  @override
  String get setupCompleteDescription => 'Artive ist jetzt mit Ihrem Supabase-Projekt verbunden.\n\nSie können jetzt Ihre Kunstwerke hinzufügen!';

  @override
  String get setupQuickTips => 'Schnelltipps';

  @override
  String get setupQuickTipsContent => '• Tippen Sie auf + um Ihr erstes Kunstwerk hinzuzufügen\n• Fügen Sie mehrere Bilder mit verschiedenen Tags hinzu (Haupt, Referenz, Scan)\n• Nutzen Sie Suche und Filter, um Kunstwerke schnell zu finden\n• Ändern Sie die Sprache in den Einstellungen';

  @override
  String get setupStartUsing => 'Artive verwenden';

  @override
  String get openInBrowser => 'Im Browser öffnen';

  @override
  String get couldNotOpenBrowser => 'Browser konnte nicht automatisch geöffnet werden. Bitte kopieren Sie diese URL und öffnen Sie sie manuell:';

  @override
  String get urlCopied => 'URL in die Zwischenablage kopiert';

  @override
  String get backupRestore => 'Sicherung und Wiederherstellung';

  @override
  String get backupRestoreSubtitle => 'Daten exportieren oder importieren';

  @override
  String get createBackup => 'Sicherung erstellen';

  @override
  String get createBackupDescription => 'Exportieren Sie alle Ihre Kunstwerke und Bilder in eine ZIP-Datei, die Sie speichern oder teilen können.';

  @override
  String get restoreBackup => 'Sicherung wiederherstellen';

  @override
  String get restoreBackupDescription => 'Importieren Sie Kunstwerke und Bilder aus einer zuvor erstellten Sicherungsdatei.';

  @override
  String get restoreBackupConfirm => 'Wie möchten Sie die Sicherung wiederherstellen?';

  @override
  String get restoreMerge => 'Mit vorhandenen zusammenführen';

  @override
  String get restoreReplace => 'Alles ersetzen';

  @override
  String get backupCreated => 'Sicherung erfolgreich erstellt';

  @override
  String restoreComplete(int count) {
    return '$count Kunstwerke wiederhergestellt';
  }

  @override
  String get backupNote => 'Sicherungen enthalten alle Kunstwerk-Daten und Bilder. Bewahren Sie sie sicher auf!';
}
