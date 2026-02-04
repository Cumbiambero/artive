// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Italian (`it`).
class AppLocalizationsIt extends AppLocalizations {
  AppLocalizationsIt([String locale = 'it']) : super(locale);

  @override
  String get appTitle => 'Artive';

  @override
  String get artworks => 'Opere';

  @override
  String get addArtwork => 'Aggiungi opera';

  @override
  String get editArtwork => 'Modifica opera';

  @override
  String get deleteArtwork => 'Elimina opera';

  @override
  String get name => 'Nome';

  @override
  String get description => 'Descrizione';

  @override
  String get descriptionOptional => 'Descrizione (opzionale)';

  @override
  String get date => 'Creato il';

  @override
  String get month => 'Mese';

  @override
  String get year => 'Anno';

  @override
  String get dimension => 'Dimensione';

  @override
  String get dimensionHint => 'es., 50x70 cm';

  @override
  String get medium => 'Tecnica';

  @override
  String get mediumHint => 'es., Olio su tela';

  @override
  String get images => 'Immagini';

  @override
  String get addImage => 'Aggiungi immagine';

  @override
  String get photo => 'Principale';

  @override
  String get reference => 'Foto riferimento';

  @override
  String get scan => 'Scansione';

  @override
  String get save => 'Salva';

  @override
  String get cancel => 'Annulla';

  @override
  String get delete => 'Elimina';

  @override
  String get confirmDelete => 'Sei sicuro di voler eliminare questa opera?';

  @override
  String get confirmDeleteImage => 'Sei sicuro di voler eliminare questa immagine?';

  @override
  String get yes => 'Sì';

  @override
  String get no => 'No';

  @override
  String get settings => 'Impostazioni';

  @override
  String get language => 'Lingua';

  @override
  String get about => 'Informazioni';

  @override
  String get version => 'Versione';

  @override
  String get search => 'Cerca';

  @override
  String get searchHint => 'Ricerca esatta';

  @override
  String get noArtworks => 'Nessuna opera ancora';

  @override
  String get noArtworksHint => 'Tocca + per aggiungere la tua prima opera';

  @override
  String get loading => 'Caricamento...';

  @override
  String get error => 'Errore';

  @override
  String get retry => 'Riprova';

  @override
  String get uploadingImage => 'Caricamento immagine...';

  @override
  String get imageUploaded => 'Immagine caricata';

  @override
  String get imageFailed => 'Caricamento immagine fallito';

  @override
  String get artworkSaved => 'Opera salvata';

  @override
  String get artworkDeleted => 'Opera eliminata';

  @override
  String get requiredField => 'Questo campo è obbligatorio';

  @override
  String get invalidYear => 'Inserisci un anno valido';

  @override
  String get invalidMonth => 'Inserisci un mese tra 1 e 12';

  @override
  String get selectImageTag => 'Seleziona tipo immagine';

  @override
  String get gallery => 'Galleria';

  @override
  String get camera => 'Fotocamera';

  @override
  String get selectSource => 'Seleziona origine immagine';

  @override
  String get id => 'ID';

  @override
  String get createdAt => 'Caricato il';

  @override
  String get filterByMedium => 'Filtra per tecnica';

  @override
  String get filterByYear => 'Filtra per anno';

  @override
  String get allMedia => 'Tutte le tecniche';

  @override
  String get allYears => 'Tutti gli anni';

  @override
  String get sortBy => 'Ordina per';

  @override
  String get sortByName => 'Nome';

  @override
  String get sortByDate => 'Data';

  @override
  String get sortByCreated => 'Creazione';

  @override
  String get ascending => 'Crescente';

  @override
  String get descending => 'Decrescente';

  @override
  String get back => 'Indietro';

  @override
  String get close => 'Chiudi';

  @override
  String get copy => 'Copia';

  @override
  String get skip => 'Salta';

  @override
  String get done => 'Fatto';

  @override
  String get reset => 'Reimposta';

  @override
  String get cloudConnection => 'Connessione Cloud';

  @override
  String get cloudConnectionSubtitle => 'Riconfigura connessione Supabase';

  @override
  String get resetCloudConnection => 'Reimposta Connessione Cloud';

  @override
  String get resetCloudConnectionMessage => 'Questo disconnetterà l\'app dal tuo progetto Supabase. Dovrai eseguire nuovamente la procedura guidata.\n\nI tuoi dati in Supabase NON verranno eliminati.';

  @override
  String get restartToReconfigure => 'Riavvia l\'app per riconfigurare';

  @override
  String get databasePaused => 'Database in Pausa';

  @override
  String get databasePausedMessage => 'Il tuo progetto Supabase è in pausa per inattività.\n\nPer ripristinare:\n1. Vai su supabase.com/dashboard\n2. Seleziona il tuo progetto\n3. Clicca su \"Ripristina progetto\"\n\nCi vuole circa 1 minuto.';

  @override
  String get setupTitle => 'Configurazione Artive';

  @override
  String get setupWelcome => 'Benvenuto in Artive!';

  @override
  String get setupWelcomeDescription => 'Questa procedura guidata ti aiuterà a configurare l\'archiviazione cloud per il tuo catalogo di opere.\n\nLe tue opere e immagini verranno archiviate in modo sicuro in Supabase, una piattaforma cloud gratuita.\n\nLa configurazione richiede circa 5 minuti.';

  @override
  String get setupWhatIsSupabase => 'Cos\'è Supabase?';

  @override
  String get setupWhatIsSupabaseContent => 'Supabase è un servizio backend gratuito e open-source. Fornisce database e archiviazione file per la tua app.';

  @override
  String get setupYourData => 'I tuoi dati, il tuo controllo';

  @override
  String get setupYourDataContent => 'Crei il tuo account Supabase personale. I tuoi dati appartengono a te e solo tu puoi accedervi.';

  @override
  String get setupGetStarted => 'Inizia';

  @override
  String get setupStep1Title => 'Passo 1: Crea un progetto Supabase';

  @override
  String get setupStep1_1 => 'Vai su supabase.com e crea un account gratuito';

  @override
  String get setupOpenSupabase => 'Apri Supabase';

  @override
  String get setupStep1_2 => 'Clicca su \"Nuovo progetto\" nella dashboard';

  @override
  String get setupStep1_3 => 'Scegli un nome per il progetto (es. \"Artive\")';

  @override
  String get setupStep1_4 => 'Imposta una password sicura per il database (salvala!)';

  @override
  String get setupStep1_5 => 'Seleziona una regione vicina a te';

  @override
  String get setupStep1_6 => 'Clicca su \"Crea nuovo progetto\" e attendi';

  @override
  String get setupFreeTier => 'Piano Gratuito';

  @override
  String get setupFreeTierContent => 'Il piano gratuito di Supabase include 500MB di database e 1GB di archiviazione file - sufficiente per migliaia di opere!';

  @override
  String get setupProjectCreated => 'Progetto Creato';

  @override
  String get setupStep2Title => 'Passo 2: Ottieni le tue credenziali';

  @override
  String get setupStep2_1 => 'Nel tuo progetto Supabase, vai su \"Impostazioni Progetto\" (icona ingranaggio)';

  @override
  String get setupStep2_2 => 'Clicca su \"Data API\" nel menu impostazioni';

  @override
  String get setupStep2_3 => 'Trova \"Project URL\" - tipo: https://xxxxx.supabase.co';

  @override
  String get setupStep2_4 => 'Trova la chiave \"anon\" sotto \"Project API keys\"';

  @override
  String get setupAboutApiKeys => 'Informazioni sulle chiavi API';

  @override
  String get setupAboutApiKeysContent => 'La chiave anon è sicura per le app. Funziona con le policy Row Level Security.';

  @override
  String get setupCredentialsTip => 'Suggerimento: Puoi cliccare il pulsante copia accanto ad ogni valore in Supabase.';

  @override
  String get setupIHaveCredentials => 'Ho le mie credenziali';

  @override
  String get setupStep3Title => 'Passo 3: Inserisci le tue credenziali';

  @override
  String get setupProjectUrl => 'URL del Progetto';

  @override
  String get setupAnonKey => 'Chiave Anon';

  @override
  String get setupValidateAndContinue => 'Valida e Continua';

  @override
  String get setupStep4Title => 'Passo 4: Configurazione Database';

  @override
  String get setupManualSetupRequired => 'Configurazione Manuale Richiesta';

  @override
  String get setupDatabaseManualContent => 'Le tabelle del database devono essere create manualmente. È una configurazione una tantum.';

  @override
  String get setupStep4_1 => 'In Supabase, vai su \"SQL Editor\" nella barra laterale';

  @override
  String get setupStep4_2 => 'Clicca su \"Nuova query\"';

  @override
  String get setupStep4_3 => 'Copia e incolla il seguente SQL:';

  @override
  String get setupStep4_4 => 'Clicca su \"Esegui\" per eseguire la query';

  @override
  String get setupStep4_5 => 'Dovresti vedere \"Successo. Nessuna riga restituita\"';

  @override
  String get setupSqlCopied => 'SQL copiato negli appunti';

  @override
  String get setupCheckingDatabase => 'Verifica database in corso...';

  @override
  String get setupIveRunSql => 'Ho eseguito l\'SQL';

  @override
  String get setupCheckDatabase => 'Verifica Database';

  @override
  String get setupStep5Title => 'Passo 5: Configurazione Storage';

  @override
  String get setupStorageManualContent => 'Crea il bucket di archiviazione per le immagini delle tue opere.';

  @override
  String get setupStep5_1 => 'In Supabase, vai su \"Storage\" nella barra laterale';

  @override
  String get setupStep5_2 => 'Clicca su \"Nuovo bucket\"';

  @override
  String get setupStep5_3 => 'Chiamalo esattamente: artworks';

  @override
  String get setupStep5_4 => 'Lascia \"Bucket pubblico\" DISATTIVATO (consigliato)';

  @override
  String get setupStep5_5 => 'Clicca su \"Crea bucket\"';

  @override
  String get setupAddStoragePolicy => 'Aggiungi Policy di Storage';

  @override
  String get setupAddStoragePolicyContent => 'Clicca bucket → Policy → Nuova Policy → \"Per personalizzazione completa\" → Nome: allow_all → Seleziona tutte le operazioni → Salva.';

  @override
  String get setupSettingUpStorage => 'Configurazione storage in corso...';

  @override
  String get setupSetupStorage => 'Configura Storage';

  @override
  String get setupComplete => 'Configurazione Completata!';

  @override
  String get setupCompleteDescription => 'Artive è ora connesso al tuo progetto Supabase.\n\nPuoi iniziare ad aggiungere le tue opere!';

  @override
  String get setupQuickTips => 'Suggerimenti Rapidi';

  @override
  String get setupQuickTipsContent => '• Tocca + per aggiungere la tua prima opera\n• Aggiungi più immagini con tag diversi (principale, riferimento, scansione)\n• Usa ricerca e filtri per trovare opere rapidamente\n• Cambia la lingua nelle Impostazioni';

  @override
  String get setupStartUsing => 'Inizia a Usare Artive';

  @override
  String get openInBrowser => 'Apri nel Browser';

  @override
  String get couldNotOpenBrowser => 'Impossibile aprire il browser automaticamente. Copia questo URL e aprilo manualmente:';

  @override
  String get urlCopied => 'URL copiato negli appunti';

  @override
  String get backupRestore => 'Backup e ripristino';

  @override
  String get backupRestoreSubtitle => 'Esporta o importa i tuoi dati';

  @override
  String get createBackup => 'Crea backup';

  @override
  String get createBackupDescription => 'Esporta tutte le tue opere e immagini in un file ZIP che puoi salvare o condividere.';

  @override
  String get restoreBackup => 'Ripristina backup';

  @override
  String get restoreBackupDescription => 'Importa opere e immagini da un file di backup creato precedentemente.';

  @override
  String get restoreBackupConfirm => 'Come vorresti ripristinare il backup?';

  @override
  String get restoreMerge => 'Unisci con esistenti';

  @override
  String get restoreReplace => 'Sostituisci tutto';

  @override
  String get backupCreated => 'Backup creato con successo';

  @override
  String restoreComplete(int count) {
    return '$count opere ripristinate';
  }

  @override
  String get backupNote => 'I backup includono tutti i dati delle opere e le immagini. Conservali in modo sicuro!';

  @override
  String itemsSelected(int count) {
    return '$count selezionati';
  }

  @override
  String confirmDeleteMultiple(int count) {
    return 'Eliminare $count opera/e?';
  }

  @override
  String artworksDeleted(int count) {
    return '$count opera/e eliminate';
  }

  @override
  String get selectAll => 'Seleziona tutto';
}
