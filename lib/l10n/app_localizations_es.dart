// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'Artive';

  @override
  String get artworks => 'Obras';

  @override
  String get addArtwork => 'Añadir obra';

  @override
  String get editArtwork => 'Editar obra';

  @override
  String get deleteArtwork => 'Eliminar obra';

  @override
  String get name => 'Nombre';

  @override
  String get description => 'Descripción';

  @override
  String get descriptionOptional => 'Descripción (opcional)';

  @override
  String get date => 'Creado el';

  @override
  String get month => 'Mes';

  @override
  String get year => 'Año';

  @override
  String get dimension => 'Dimensión';

  @override
  String get dimensionHint => 'ej., 50x70 cm';

  @override
  String get medium => 'Técnica';

  @override
  String get mediumHint => 'ej., Óleo sobre lienzo';

  @override
  String get images => 'Imágenes';

  @override
  String get addImage => 'Añadir imagen';

  @override
  String get photo => 'Foto';

  @override
  String get reference => 'Referencia';

  @override
  String get scan => 'Escaneo';

  @override
  String get save => 'Guardar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get delete => 'Eliminar';

  @override
  String get confirmDelete => '¿Estás seguro de que quieres eliminar esta obra?';

  @override
  String get confirmDeleteImage => '¿Estás seguro de que quieres eliminar esta imagen?';

  @override
  String get yes => 'Sí';

  @override
  String get no => 'No';

  @override
  String get settings => 'Ajustes';

  @override
  String get language => 'Idioma';

  @override
  String get about => 'Acerca de';

  @override
  String get version => 'Versión';

  @override
  String get search => 'Buscar';

  @override
  String get searchHint => 'Búsqueda exacta';

  @override
  String get noArtworks => 'No hay obras todavía';

  @override
  String get noArtworksHint => 'Toca + para añadir tu primera obra';

  @override
  String get loading => 'Cargando...';

  @override
  String get error => 'Error';

  @override
  String get retry => 'Reintentar';

  @override
  String get uploadingImage => 'Subiendo imagen...';

  @override
  String get imageUploaded => 'Imagen subida';

  @override
  String get imageFailed => 'Error al subir imagen';

  @override
  String get artworkSaved => 'Obra guardada';

  @override
  String get artworkDeleted => 'Obra eliminada';

  @override
  String get requiredField => 'Este campo es obligatorio';

  @override
  String get invalidYear => 'Por favor introduce un año válido';

  @override
  String get invalidMonth => 'Por favor introduce un mes entre 1 y 12';

  @override
  String get selectImageTag => 'Selecciona tipo de imagen';

  @override
  String get gallery => 'Galería';

  @override
  String get camera => 'Cámara';

  @override
  String get selectSource => 'Selecciona origen de imagen';

  @override
  String get id => 'ID';

  @override
  String get createdAt => 'Subido el';

  @override
  String get filterByMedium => 'Filtrar por técnica';

  @override
  String get filterByYear => 'Filtrar por año';

  @override
  String get allMedia => 'Todas las técnicas';

  @override
  String get allYears => 'Todos los años';

  @override
  String get sortBy => 'Ordenar por';

  @override
  String get sortByName => 'Nombre';

  @override
  String get sortByDate => 'Fecha';

  @override
  String get sortByCreated => 'Creación';

  @override
  String get ascending => 'Ascendente';

  @override
  String get descending => 'Descendente';

  @override
  String get back => 'Atrás';

  @override
  String get close => 'Cerrar';

  @override
  String get copy => 'Copiar';

  @override
  String get skip => 'Omitir';

  @override
  String get done => 'Listo';

  @override
  String get reset => 'Restablecer';

  @override
  String get cloudConnection => 'Conexión a la nube';

  @override
  String get cloudConnectionSubtitle => 'Reconfigurar conexión con Supabase';

  @override
  String get resetCloudConnection => 'Restablecer conexión a la nube';

  @override
  String get resetCloudConnectionMessage => 'Esto desconectará la app de tu proyecto Supabase. Tendrás que ejecutar el asistente de configuración de nuevo.\n\nTus datos en Supabase NO se eliminarán.';

  @override
  String get restartToReconfigure => 'Reinicia la app para reconfigurar';

  @override
  String get databasePaused => 'Base de datos pausada';

  @override
  String get databasePausedMessage => 'Tu proyecto Supabase está pausado por inactividad.\n\nPara restaurar:\n1. Ve a supabase.com/dashboard\n2. Selecciona tu proyecto\n3. Haz clic en \"Restore project\"\n\nTarda aproximadamente 1 minuto.';

  @override
  String get setupTitle => 'Configuración de Artive';

  @override
  String get setupWelcome => '¡Bienvenido a Artive!';

  @override
  String get setupWelcomeDescription => 'Este asistente te ayudará a configurar el almacenamiento en la nube para tu catálogo de obras.\n\nTus obras e imágenes se almacenarán de forma segura en Supabase, una plataforma gratuita en la nube.\n\nLa configuración tarda unos 5 minutos.';

  @override
  String get setupWhatIsSupabase => '¿Qué es Supabase?';

  @override
  String get setupWhatIsSupabaseContent => 'Supabase es un servicio backend gratuito y de código abierto. Proporciona una base de datos y almacenamiento de archivos para tu app.';

  @override
  String get setupYourData => 'Tus datos, tu control';

  @override
  String get setupYourDataContent => 'Tú creas tu propia cuenta de Supabase. Tus datos te pertenecen y solo tú tienes acceso.';

  @override
  String get setupGetStarted => 'Comenzar';

  @override
  String get setupStep1Title => 'Paso 1: Crear un proyecto en Supabase';

  @override
  String get setupStep1_1 => 'Ve a supabase.com y crea una cuenta gratuita';

  @override
  String get setupOpenSupabase => 'Abrir Supabase';

  @override
  String get setupStep1_2 => 'Haz clic en \"New Project\" en el panel';

  @override
  String get setupStep1_3 => 'Elige un nombre para tu proyecto (ej., \"artive\")';

  @override
  String get setupStep1_4 => 'Establece una contraseña segura para la base de datos (¡guárdala!)';

  @override
  String get setupStep1_5 => 'Selecciona una región cercana a ti';

  @override
  String get setupStep1_6 => 'Haz clic en \"Create new project\" y espera a que esté listo';

  @override
  String get setupFreeTier => 'Plan gratuito';

  @override
  String get setupFreeTierContent => 'El plan gratuito de Supabase incluye 500MB de base de datos y 1GB de almacenamiento - ¡suficiente para miles de obras!';

  @override
  String get setupProjectCreated => 'Proyecto creado';

  @override
  String get setupStep2Title => 'Paso 2: Obtener tus credenciales';

  @override
  String get setupStep2_1 => 'En tu proyecto de Supabase, ve a \"Project Settings\" (icono de engranaje)';

  @override
  String get setupStep2_2 => 'Haz clic en \"Data API\" en el menú de configuración';

  @override
  String get setupStep2_3 => 'Encuentra \"Project URL\" - se ve así: https://xxxxx.supabase.co';

  @override
  String get setupStep2_4 => 'Encuentra la clave \"anon\" bajo \"Project API keys\"';

  @override
  String get setupAboutApiKeys => 'Sobre las claves API';

  @override
  String get setupAboutApiKeysContent => 'La clave anon es segura para apps. Funciona con las políticas de Row Level Security.';

  @override
  String get setupCredentialsTip => 'Consejo: Puedes hacer clic en el botón de copiar junto a cada valor en Supabase.';

  @override
  String get setupIHaveCredentials => 'Tengo mis credenciales';

  @override
  String get setupStep3Title => 'Paso 3: Introduce tus credenciales';

  @override
  String get setupProjectUrl => 'URL del proyecto';

  @override
  String get setupAnonKey => 'Clave Anon';

  @override
  String get setupValidateAndContinue => 'Validar y continuar';

  @override
  String get setupStep4Title => 'Paso 4: Configuración de la base de datos';

  @override
  String get setupManualSetupRequired => 'Configuración manual requerida';

  @override
  String get setupDatabaseManualContent => 'Las tablas de la base de datos necesitan crearse manualmente. Esta es una configuración única.';

  @override
  String get setupStep4_1 => 'En Supabase, ve a \"SQL Editor\" en la barra lateral';

  @override
  String get setupStep4_2 => 'Haz clic en \"New query\"';

  @override
  String get setupStep4_3 => 'Copia y pega el siguiente SQL:';

  @override
  String get setupStep4_4 => 'Haz clic en \"Run\" para ejecutar la consulta';

  @override
  String get setupStep4_5 => 'Deberías ver \"Success. No rows returned\"';

  @override
  String get setupSqlCopied => 'SQL copiado al portapapeles';

  @override
  String get setupCheckingDatabase => 'Verificando base de datos...';

  @override
  String get setupIveRunSql => 'Ya ejecuté el SQL';

  @override
  String get setupCheckDatabase => 'Verificar base de datos';

  @override
  String get setupStep5Title => 'Paso 5: Configuración del almacenamiento';

  @override
  String get setupStorageManualContent => 'Crea el bucket de almacenamiento para las imágenes de tus obras.';

  @override
  String get setupStep5_1 => 'En Supabase, ve a \"Storage\" en la barra lateral';

  @override
  String get setupStep5_2 => 'Haz clic en \"New bucket\"';

  @override
  String get setupStep5_3 => 'Nómbralo exactamente: artworks';

  @override
  String get setupStep5_4 => 'Deja \"Public bucket\" desactivado (recomendado)';

  @override
  String get setupStep5_5 => 'Haz clic en \"Create bucket\"';

  @override
  String get setupAddStoragePolicy => 'Añadir política de almacenamiento';

  @override
  String get setupAddStoragePolicyContent => 'Haz clic en bucket → Policies → New Policy → \"For full customization\" → Nombre: allow_all → Marca todas las operaciones → Guardar.';

  @override
  String get setupSettingUpStorage => 'Configurando almacenamiento...';

  @override
  String get setupSetupStorage => 'Configurar almacenamiento';

  @override
  String get setupComplete => '¡Configuración completada!';

  @override
  String get setupCompleteDescription => 'Artive ahora está conectado a tu proyecto Supabase.\n\n¡Puedes empezar a añadir tus obras!';

  @override
  String get setupQuickTips => 'Consejos rápidos';

  @override
  String get setupQuickTipsContent => '• Toca el botón + para añadir tu primera obra\n• Añade múltiples imágenes con diferentes etiquetas (principal, referencia, escaneo)\n• Usa la búsqueda y los filtros para encontrar obras rápidamente\n• Cambia el idioma en Ajustes';

  @override
  String get setupStartUsing => 'Empezar a usar Artive';

  @override
  String get openInBrowser => 'Abrir en el navegador';

  @override
  String get couldNotOpenBrowser => 'No se pudo abrir el navegador automáticamente. Por favor copia esta URL y ábrela manualmente:';

  @override
  String get urlCopied => 'URL copiada al portapapeles';

  @override
  String get backupRestore => 'Copia de seguridad y restauración';

  @override
  String get backupRestoreSubtitle => 'Exporta o importa tus datos';

  @override
  String get createBackup => 'Crear copia de seguridad';

  @override
  String get createBackupDescription => 'Exporta todas tus obras e imágenes a un archivo ZIP que puedes guardar o compartir.';

  @override
  String get restoreBackup => 'Restaurar copia';

  @override
  String get restoreBackupDescription => 'Importa obras e imágenes desde un archivo de copia de seguridad creado anteriormente.';

  @override
  String get restoreBackupConfirm => '¿Cómo te gustaría restaurar la copia de seguridad?';

  @override
  String get restoreMerge => 'Combinar con existentes';

  @override
  String get restoreReplace => 'Reemplazar todo';

  @override
  String get backupCreated => 'Copia de seguridad creada correctamente';

  @override
  String restoreComplete(int count) {
    return '$count obras restauradas';
  }

  @override
  String get backupNote => 'Las copias de seguridad incluyen todos los datos de obras e imágenes. ¡Guárdalas de forma segura!';

  @override
  String itemsSelected(int count) {
    return '$count seleccionados';
  }

  @override
  String confirmDeleteMultiple(int count) {
    return '¿Eliminar $count obra(s)?';
  }

  @override
  String artworksDeleted(int count) {
    return '$count obra(s) eliminada(s)';
  }

  @override
  String get selectAll => 'Seleccionar todo';
}
