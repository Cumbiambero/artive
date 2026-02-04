// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'Artive';

  @override
  String get artworks => 'Œuvres';

  @override
  String get addArtwork => 'Ajouter une œuvre';

  @override
  String get editArtwork => 'Modifier l\'œuvre';

  @override
  String get deleteArtwork => 'Supprimer l\'œuvre';

  @override
  String get name => 'Nom';

  @override
  String get description => 'Description';

  @override
  String get descriptionOptional => 'Description (optionnel)';

  @override
  String get date => 'Créé le';

  @override
  String get month => 'Mois';

  @override
  String get year => 'Année';

  @override
  String get dimension => 'Dimension';

  @override
  String get dimensionHint => 'ex., 50x70 cm';

  @override
  String get medium => 'Technique';

  @override
  String get mediumHint => 'ex., Huile sur toile';

  @override
  String get images => 'Images';

  @override
  String get addImage => 'Ajouter une image';

  @override
  String get photo => 'Principale';

  @override
  String get reference => 'Photo référence';

  @override
  String get scan => 'Scan';

  @override
  String get save => 'Enregistrer';

  @override
  String get cancel => 'Annuler';

  @override
  String get delete => 'Supprimer';

  @override
  String get confirmDelete => 'Êtes-vous sûr de vouloir supprimer cette œuvre ?';

  @override
  String get confirmDeleteImage => 'Êtes-vous sûr de vouloir supprimer cette image ?';

  @override
  String get yes => 'Oui';

  @override
  String get no => 'Non';

  @override
  String get settings => 'Paramètres';

  @override
  String get language => 'Langue';

  @override
  String get about => 'À propos';

  @override
  String get version => 'Version';

  @override
  String get search => 'Rechercher';

  @override
  String get searchHint => 'Recherche exacte';

  @override
  String get noArtworks => 'Aucune œuvre pour le moment';

  @override
  String get noArtworksHint => 'Appuyez sur + pour ajouter votre première œuvre';

  @override
  String get loading => 'Chargement...';

  @override
  String get error => 'Erreur';

  @override
  String get retry => 'Réessayer';

  @override
  String get uploadingImage => 'Téléchargement de l\'image...';

  @override
  String get imageUploaded => 'Image téléchargée';

  @override
  String get imageFailed => 'Échec du téléchargement';

  @override
  String get artworkSaved => 'Œuvre enregistrée';

  @override
  String get artworkDeleted => 'Œuvre supprimée';

  @override
  String get requiredField => 'Ce champ est obligatoire';

  @override
  String get invalidYear => 'Veuillez entrer une année valide';

  @override
  String get invalidMonth => 'Veuillez entrer un mois entre 1 et 12';

  @override
  String get selectImageTag => 'Sélectionner le type d\'image';

  @override
  String get gallery => 'Galerie';

  @override
  String get camera => 'Appareil photo';

  @override
  String get selectSource => 'Sélectionner la source';

  @override
  String get id => 'ID';

  @override
  String get createdAt => 'Téléchargé le';

  @override
  String get filterByMedium => 'Filtrer par technique';

  @override
  String get filterByYear => 'Filtrer par année';

  @override
  String get allMedia => 'Toutes les techniques';

  @override
  String get allYears => 'Toutes les années';

  @override
  String get sortBy => 'Trier par';

  @override
  String get sortByName => 'Nom';

  @override
  String get sortByDate => 'Date';

  @override
  String get sortByCreated => 'Création';

  @override
  String get ascending => 'Croissant';

  @override
  String get descending => 'Décroissant';

  @override
  String get back => 'Retour';

  @override
  String get close => 'Fermer';

  @override
  String get copy => 'Copier';

  @override
  String get skip => 'Ignorer';

  @override
  String get done => 'Terminé';

  @override
  String get reset => 'Réinitialiser';

  @override
  String get cloudConnection => 'Connexion Cloud';

  @override
  String get cloudConnectionSubtitle => 'Reconfigurer la connexion Supabase';

  @override
  String get resetCloudConnection => 'Réinitialiser la connexion Cloud';

  @override
  String get resetCloudConnectionMessage => 'Cela déconnectera l\'application de votre projet Supabase. Vous devrez relancer l\'assistant de configuration.\n\nVos données dans Supabase ne seront PAS supprimées.';

  @override
  String get restartToReconfigure => 'Veuillez redémarrer l\'application pour reconfigurer';

  @override
  String get databasePaused => 'Base de données en pause';

  @override
  String get databasePausedMessage => 'Votre projet Supabase est en pause en raison d\'inactivité.\n\nPour restaurer :\n1. Allez sur supabase.com/dashboard\n2. Sélectionnez votre projet\n3. Cliquez sur \"Restaurer le projet\"\n\nCela prend environ 1 minute.';

  @override
  String get setupTitle => 'Configuration d\'Artive';

  @override
  String get setupWelcome => 'Bienvenue sur Artive !';

  @override
  String get setupWelcomeDescription => 'Cet assistant vous aidera à configurer le stockage cloud pour votre catalogue d\'œuvres.\n\nVos œuvres et images seront stockées en toute sécurité dans Supabase, une plateforme cloud gratuite.\n\nLa configuration prend environ 5 minutes.';

  @override
  String get setupWhatIsSupabase => 'Qu\'est-ce que Supabase ?';

  @override
  String get setupWhatIsSupabaseContent => 'Supabase est un service backend gratuit et open-source. Il fournit une base de données et un stockage de fichiers pour votre application.';

  @override
  String get setupYourData => 'Vos données, votre contrôle';

  @override
  String get setupYourDataContent => 'Vous créez votre propre compte Supabase. Vos données vous appartiennent et vous seul y avez accès.';

  @override
  String get setupGetStarted => 'Commencer';

  @override
  String get setupStep1Title => 'Étape 1 : Créer un projet Supabase';

  @override
  String get setupStep1_1 => 'Allez sur supabase.com et créez un compte gratuit';

  @override
  String get setupOpenSupabase => 'Ouvrir Supabase';

  @override
  String get setupStep1_2 => 'Cliquez sur \"Nouveau projet\" dans le tableau de bord';

  @override
  String get setupStep1_3 => 'Choisissez un nom pour votre projet (ex. \"Artive\")';

  @override
  String get setupStep1_4 => 'Définissez un mot de passe sécurisé (sauvegardez-le !)';

  @override
  String get setupStep1_5 => 'Sélectionnez une région proche de vous';

  @override
  String get setupStep1_6 => 'Cliquez sur \"Créer un nouveau projet\" et attendez';

  @override
  String get setupFreeTier => 'Offre gratuite';

  @override
  String get setupFreeTierContent => 'L\'offre gratuite Supabase inclut 500 Mo de base de données et 1 Go de stockage - suffisant pour des milliers d\'œuvres !';

  @override
  String get setupProjectCreated => 'Projet créé';

  @override
  String get setupStep2Title => 'Étape 2 : Obtenir vos identifiants';

  @override
  String get setupStep2_1 => 'Dans votre projet Supabase, allez dans \"Paramètres du projet\" (icône engrenage)';

  @override
  String get setupStep2_2 => 'Cliquez sur \"Data API\" dans le menu des paramètres';

  @override
  String get setupStep2_3 => 'Trouvez \"Project URL\" - ressemble à : https://xxxxx.supabase.co';

  @override
  String get setupStep2_4 => 'Trouvez la clé \"anon\" sous \"Project API keys\"';

  @override
  String get setupAboutApiKeys => 'À propos des clés API';

  @override
  String get setupAboutApiKeysContent => 'La clé anon est sécurisée pour les applications. Elle fonctionne avec les politiques Row Level Security.';

  @override
  String get setupCredentialsTip => 'Astuce : Vous pouvez cliquer sur le bouton copier à côté de chaque valeur dans Supabase.';

  @override
  String get setupIHaveCredentials => 'J\'ai mes identifiants';

  @override
  String get setupStep3Title => 'Étape 3 : Entrer vos identifiants';

  @override
  String get setupProjectUrl => 'URL du projet';

  @override
  String get setupAnonKey => 'Clé Anon';

  @override
  String get setupValidateAndContinue => 'Valider et continuer';

  @override
  String get setupStep4Title => 'Étape 4 : Configuration de la base de données';

  @override
  String get setupManualSetupRequired => 'Configuration manuelle requise';

  @override
  String get setupDatabaseManualContent => 'Les tables de la base de données doivent être créées manuellement. C\'est une configuration unique.';

  @override
  String get setupStep4_1 => 'Dans Supabase, allez dans \"SQL Editor\" dans la barre latérale';

  @override
  String get setupStep4_2 => 'Cliquez sur \"Nouvelle requête\"';

  @override
  String get setupStep4_3 => 'Copiez et collez le SQL suivant :';

  @override
  String get setupStep4_4 => 'Cliquez sur \"Exécuter\" pour exécuter la requête';

  @override
  String get setupStep4_5 => 'Vous devriez voir \"Succès. Aucune ligne retournée\"';

  @override
  String get setupSqlCopied => 'SQL copié dans le presse-papiers';

  @override
  String get setupCheckingDatabase => 'Vérification de la base de données...';

  @override
  String get setupIveRunSql => 'J\'ai exécuté le SQL';

  @override
  String get setupCheckDatabase => 'Vérifier la base de données';

  @override
  String get setupStep5Title => 'Étape 5 : Configuration du stockage';

  @override
  String get setupStorageManualContent => 'Créez le bucket de stockage pour vos images d\'œuvres.';

  @override
  String get setupStep5_1 => 'Dans Supabase, allez dans \"Storage\" dans la barre latérale';

  @override
  String get setupStep5_2 => 'Cliquez sur \"Nouveau bucket\"';

  @override
  String get setupStep5_3 => 'Nommez-le exactement : artworks';

  @override
  String get setupStep5_4 => 'Laissez \"Bucket public\" DÉSACTIVÉ (recommandé)';

  @override
  String get setupStep5_5 => 'Cliquez sur \"Créer le bucket\"';

  @override
  String get setupAddStoragePolicy => 'Ajouter une politique de stockage';

  @override
  String get setupAddStoragePolicyContent => 'Cliquez sur bucket → Politiques → Nouvelle politique → \"Pour personnalisation complète\" → Nom : allow_all → Cocher toutes les opérations → Enregistrer.';

  @override
  String get setupSettingUpStorage => 'Configuration du stockage...';

  @override
  String get setupSetupStorage => 'Configurer le stockage';

  @override
  String get setupComplete => 'Configuration terminée !';

  @override
  String get setupCompleteDescription => 'Artive est maintenant connecté à votre projet Supabase.\n\nVous pouvez commencer à ajouter vos œuvres !';

  @override
  String get setupQuickTips => 'Conseils rapides';

  @override
  String get setupQuickTipsContent => '• Appuyez sur + pour ajouter votre première œuvre\n• Ajoutez plusieurs images avec différents tags (principal, référence, scan)\n• Utilisez la recherche et les filtres pour trouver rapidement des œuvres\n• Changez la langue dans les paramètres';

  @override
  String get setupStartUsing => 'Commencer à utiliser Artive';

  @override
  String get openInBrowser => 'Ouvrir dans le navigateur';

  @override
  String get couldNotOpenBrowser => 'Impossible d\'ouvrir le navigateur automatiquement. Veuillez copier cette URL et l\'ouvrir manuellement :';

  @override
  String get urlCopied => 'URL copiée dans le presse-papiers';

  @override
  String get backupRestore => 'Sauvegarde et restauration';

  @override
  String get backupRestoreSubtitle => 'Exportez ou importez vos données';

  @override
  String get createBackup => 'Créer une sauvegarde';

  @override
  String get createBackupDescription => 'Exportez toutes vos œuvres et images dans un fichier ZIP que vous pouvez enregistrer ou partager.';

  @override
  String get restoreBackup => 'Restaurer la sauvegarde';

  @override
  String get restoreBackupDescription => 'Importez des œuvres et des images à partir d\'un fichier de sauvegarde créé précédemment.';

  @override
  String get restoreBackupConfirm => 'Comment souhaitez-vous restaurer la sauvegarde ?';

  @override
  String get restoreMerge => 'Fusionner avec l\'existant';

  @override
  String get restoreReplace => 'Tout remplacer';

  @override
  String get backupCreated => 'Sauvegarde créée avec succès';

  @override
  String restoreComplete(int count) {
    return '$count œuvres restaurées';
  }

  @override
  String get backupNote => 'Les sauvegardes incluent toutes les données d\'œuvres et d\'images. Conservez-les en sécurité !';

  @override
  String itemsSelected(int count) {
    return '$count sélectionné(s)';
  }

  @override
  String confirmDeleteMultiple(int count) {
    return 'Supprimer $count œuvre(s) ?';
  }

  @override
  String artworksDeleted(int count) {
    return '$count œuvre(s) supprimée(s)';
  }

  @override
  String get selectAll => 'Tout sélectionner';
}
