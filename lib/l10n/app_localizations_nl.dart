// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'Artive';

  @override
  String get artworks => 'Kunstwerken';

  @override
  String get addArtwork => 'Kunstwerk toevoegen';

  @override
  String get editArtwork => 'Kunstwerk bewerken';

  @override
  String get deleteArtwork => 'Kunstwerk verwijderen';

  @override
  String get name => 'Naam';

  @override
  String get description => 'Beschrijving';

  @override
  String get descriptionOptional => 'Beschrijving (optioneel)';

  @override
  String get date => 'Gemaakt op';

  @override
  String get month => 'Maand';

  @override
  String get year => 'Jaar';

  @override
  String get dimension => 'Afmeting';

  @override
  String get dimensionHint => 'bijv., 50x70 cm';

  @override
  String get medium => 'Techniek';

  @override
  String get mediumHint => 'bijv., Olieverf op doek';

  @override
  String get images => 'Afbeeldingen';

  @override
  String get addImage => 'Afbeelding toevoegen';

  @override
  String get photo => 'Hoofd';

  @override
  String get reference => 'Foto referentie';

  @override
  String get scan => 'Scan';

  @override
  String get save => 'Opslaan';

  @override
  String get cancel => 'Annuleren';

  @override
  String get delete => 'Verwijderen';

  @override
  String get confirmDelete => 'Weet je zeker dat je dit kunstwerk wilt verwijderen?';

  @override
  String get confirmDeleteImage => 'Weet je zeker dat je deze afbeelding wilt verwijderen?';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Nee';

  @override
  String get settings => 'Instellingen';

  @override
  String get language => 'Taal';

  @override
  String get about => 'Over';

  @override
  String get version => 'Versie';

  @override
  String get search => 'Zoeken';

  @override
  String get searchHint => 'Exacte zoekopdracht';

  @override
  String get noArtworks => 'Nog geen kunstwerken';

  @override
  String get noArtworksHint => 'Tik op + om je eerste kunstwerk toe te voegen';

  @override
  String get loading => 'Laden...';

  @override
  String get error => 'Fout';

  @override
  String get retry => 'Opnieuw proberen';

  @override
  String get uploadingImage => 'Afbeelding uploaden...';

  @override
  String get imageUploaded => 'Afbeelding geüpload';

  @override
  String get imageFailed => 'Afbeelding upload mislukt';

  @override
  String get artworkSaved => 'Kunstwerk opgeslagen';

  @override
  String get artworkDeleted => 'Kunstwerk verwijderd';

  @override
  String get requiredField => 'Dit veld is verplicht';

  @override
  String get invalidYear => 'Voer een geldig jaar in';

  @override
  String get invalidMonth => 'Voer een maand tussen 1 en 12 in';

  @override
  String get selectImageTag => 'Selecteer afbeeldingstype';

  @override
  String get gallery => 'Galerij';

  @override
  String get camera => 'Camera';

  @override
  String get selectSource => 'Selecteer afbeeldingsbron';

  @override
  String get id => 'ID';

  @override
  String get createdAt => 'Geüpload op';

  @override
  String get filterByMedium => 'Filter op techniek';

  @override
  String get filterByYear => 'Filter op jaar';

  @override
  String get allMedia => 'Alle technieken';

  @override
  String get allYears => 'Alle jaren';

  @override
  String get sortBy => 'Sorteren op';

  @override
  String get sortByName => 'Naam';

  @override
  String get sortByDate => 'Datum';

  @override
  String get sortByCreated => 'Aanmaakdatum';

  @override
  String get ascending => 'Oplopend';

  @override
  String get descending => 'Aflopend';

  @override
  String get back => 'Terug';

  @override
  String get close => 'Sluiten';

  @override
  String get copy => 'Kopiëren';

  @override
  String get skip => 'Overslaan';

  @override
  String get done => 'Klaar';

  @override
  String get reset => 'Resetten';

  @override
  String get cloudConnection => 'Cloudverbinding';

  @override
  String get cloudConnectionSubtitle => 'Supabase-verbinding opnieuw configureren';

  @override
  String get resetCloudConnection => 'Cloudverbinding resetten';

  @override
  String get resetCloudConnectionMessage => 'Dit verbreekt de verbinding van de app met je Supabase-project. Je moet de installatiewizard opnieuw uitvoeren.\n\nJe gegevens in Supabase worden NIET verwijderd.';

  @override
  String get restartToReconfigure => 'Herstart de app om opnieuw te configureren';

  @override
  String get databasePaused => 'Database Gepauzeerd';

  @override
  String get databasePausedMessage => 'Je Supabase-project is gepauzeerd vanwege inactiviteit.\n\nOm te herstellen:\n1. Ga naar supabase.com/dashboard\n2. Selecteer je project\n3. Klik op \"Project herstellen\"\n\nDit duurt ongeveer 1 minuut.';

  @override
  String get setupTitle => 'Artive Instellen';

  @override
  String get setupWelcome => 'Welkom bij Artive!';

  @override
  String get setupWelcomeDescription => 'Deze wizard helpt je bij het instellen van cloudopslag voor je kunstwerkcatalogus.\n\nJe kunstwerken en afbeeldingen worden veilig opgeslagen in Supabase, een gratis cloudplatform.\n\nDe installatie duurt ongeveer 5 minuten.';

  @override
  String get setupWhatIsSupabase => 'Wat is Supabase?';

  @override
  String get setupWhatIsSupabaseContent => 'Supabase is een gratis, open-source backend-service. Het biedt een database en bestandsopslag voor je app.';

  @override
  String get setupYourData => 'Jouw Gegevens, Jouw Controle';

  @override
  String get setupYourDataContent => 'Je maakt je eigen Supabase-account aan. Je gegevens zijn van jou en alleen jij hebt toegang.';

  @override
  String get setupGetStarted => 'Aan de slag';

  @override
  String get setupStep1Title => 'Stap 1: Maak een Supabase-project';

  @override
  String get setupStep1_1 => 'Ga naar supabase.com en maak een gratis account aan';

  @override
  String get setupOpenSupabase => 'Open Supabase';

  @override
  String get setupStep1_2 => 'Klik op \"Nieuw project\" in het dashboard';

  @override
  String get setupStep1_3 => 'Kies een naam voor je project (bijv. \"artive\")';

  @override
  String get setupStep1_4 => 'Stel een veilig databasewachtwoord in (bewaar het!)';

  @override
  String get setupStep1_5 => 'Selecteer een regio dicht bij jou';

  @override
  String get setupStep1_6 => 'Klik op \"Nieuw project maken\" en wacht';

  @override
  String get setupFreeTier => 'Gratis Tier';

  @override
  String get setupFreeTierContent => 'De gratis Supabase-tier bevat 500MB database en 1GB bestandsopslag - genoeg voor duizenden kunstwerken!';

  @override
  String get setupProjectCreated => 'Project Aangemaakt';

  @override
  String get setupStep2Title => 'Stap 2: Haal je Inloggegevens op';

  @override
  String get setupStep2_1 => 'Ga in je Supabase-project naar \"Projectinstellingen\" (tandwiel-icoon)';

  @override
  String get setupStep2_2 => 'Klik op \"Data API\" in het instellingenmenu';

  @override
  String get setupStep2_3 => 'Zoek \"Project URL\" - ziet eruit als: https://xxxxx.supabase.co';

  @override
  String get setupStep2_4 => 'Zoek de \"anon\" sleutel onder \"Project API keys\"';

  @override
  String get setupAboutApiKeys => 'Over API-sleutels';

  @override
  String get setupAboutApiKeysContent => 'De anon-sleutel is veilig voor apps. Het werkt met Row Level Security-beleid.';

  @override
  String get setupCredentialsTip => 'Tip: Je kunt op de kopieerknop naast elke waarde in Supabase klikken.';

  @override
  String get setupIHaveCredentials => 'Ik heb mijn inloggegevens';

  @override
  String get setupStep3Title => 'Stap 3: Voer je Inloggegevens in';

  @override
  String get setupProjectUrl => 'Project URL';

  @override
  String get setupAnonKey => 'Anon-sleutel';

  @override
  String get setupValidateAndContinue => 'Valideren en Doorgaan';

  @override
  String get setupStep4Title => 'Stap 4: Database Instellen';

  @override
  String get setupManualSetupRequired => 'Handmatige Installatie Vereist';

  @override
  String get setupDatabaseManualContent => 'De databasetabellen moeten handmatig worden aangemaakt. Dit is een eenmalige installatie.';

  @override
  String get setupStep4_1 => 'Ga in Supabase naar \"SQL Editor\" in de zijbalk';

  @override
  String get setupStep4_2 => 'Klik op \"Nieuwe query\"';

  @override
  String get setupStep4_3 => 'Kopieer en plak de volgende SQL:';

  @override
  String get setupStep4_4 => 'Klik op \"Uitvoeren\" om de query uit te voeren';

  @override
  String get setupStep4_5 => 'Je zou \"Succes. Geen rijen geretourneerd\" moeten zien';

  @override
  String get setupSqlCopied => 'SQL gekopieerd naar klembord';

  @override
  String get setupCheckingDatabase => 'Database controleren...';

  @override
  String get setupIveRunSql => 'Ik heb de SQL uitgevoerd';

  @override
  String get setupCheckDatabase => 'Controleer Database';

  @override
  String get setupStep5Title => 'Stap 5: Opslag Instellen';

  @override
  String get setupStorageManualContent => 'Maak de opslagbucket voor je kunstwerkafbeeldingen.';

  @override
  String get setupStep5_1 => 'Ga in Supabase naar \"Storage\" in de zijbalk';

  @override
  String get setupStep5_2 => 'Klik op \"Nieuwe bucket\"';

  @override
  String get setupStep5_3 => 'Noem het precies: artworks';

  @override
  String get setupStep5_4 => 'Laat \"Openbare bucket\" UIT (aanbevolen)';

  @override
  String get setupStep5_5 => 'Klik op \"Bucket maken\"';

  @override
  String get setupAddStoragePolicy => 'Opslagbeleid Toevoegen';

  @override
  String get setupAddStoragePolicyContent => 'Klik op bucket → Beleid → Nieuw beleid → \"Voor volledige aanpassing\" → Naam: allow_all → Vink alle bewerkingen aan → Opslaan.';

  @override
  String get setupSettingUpStorage => 'Opslag instellen...';

  @override
  String get setupSetupStorage => 'Opslag Instellen';

  @override
  String get setupComplete => 'Installatie Voltooid!';

  @override
  String get setupCompleteDescription => 'Artive is nu verbonden met je Supabase-project.\n\nJe kunt beginnen met het toevoegen van je kunstwerken!';

  @override
  String get setupQuickTips => 'Snelle Tips';

  @override
  String get setupQuickTipsContent => '• Tik op + om je eerste kunstwerk toe te voegen\n• Voeg meerdere afbeeldingen toe met verschillende tags (hoofd, referentie, scan)\n• Gebruik zoeken en filters om kunstwerken snel te vinden\n• Wijzig de taal in Instellingen';

  @override
  String get setupStartUsing => 'Begin Artive te Gebruiken';

  @override
  String get openInBrowser => 'Openen in Browser';

  @override
  String get couldNotOpenBrowser => 'Kon browser niet automatisch openen. Kopieer deze URL en open handmatig:';

  @override
  String get urlCopied => 'URL gekopieerd naar klembord';

  @override
  String get backupRestore => 'Backup en herstel';

  @override
  String get backupRestoreSubtitle => 'Exporteer of importeer je gegevens';

  @override
  String get createBackup => 'Backup maken';

  @override
  String get createBackupDescription => 'Exporteer al je kunstwerken en afbeeldingen naar een ZIP-bestand dat je kunt opslaan of delen.';

  @override
  String get restoreBackup => 'Backup herstellen';

  @override
  String get restoreBackupDescription => 'Importeer kunstwerken en afbeeldingen uit een eerder gemaakt backupbestand.';

  @override
  String get restoreBackupConfirm => 'Hoe wil je de backup herstellen?';

  @override
  String get restoreMerge => 'Samenvoegen met bestaande';

  @override
  String get restoreReplace => 'Alles vervangen';

  @override
  String get backupCreated => 'Backup succesvol gemaakt';

  @override
  String restoreComplete(int count) {
    return '$count kunstwerken hersteld';
  }

  @override
  String get backupNote => 'Back-ups bevatten alle kunstwerkgegevens en afbeeldingen. Bewaar ze veilig!';

  @override
  String itemsSelected(int count) {
    return '$count geselecteerd';
  }

  @override
  String confirmDeleteMultiple(int count) {
    return '$count kunstwerk(en) verwijderen?';
  }

  @override
  String artworksDeleted(int count) {
    return '$count kunstwerk(en) verwijderd';
  }

  @override
  String get selectAll => 'Alles selecteren';
}
