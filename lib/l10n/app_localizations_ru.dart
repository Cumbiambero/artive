// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'Artive';

  @override
  String get artworks => 'Работы';

  @override
  String get addArtwork => 'Добавить работу';

  @override
  String get editArtwork => 'Редактировать работу';

  @override
  String get deleteArtwork => 'Удалить работу';

  @override
  String get name => 'Название';

  @override
  String get description => 'Описание';

  @override
  String get descriptionOptional => 'Описание (необязательно)';

  @override
  String get date => 'Создано';

  @override
  String get month => 'Месяц';

  @override
  String get year => 'Год';

  @override
  String get dimension => 'Размер';

  @override
  String get dimensionHint => 'напр., 50x70 см';

  @override
  String get medium => 'Техника';

  @override
  String get mediumHint => 'напр., Масло на холсте';

  @override
  String get images => 'Изображения';

  @override
  String get addImage => 'Добавить изображение';

  @override
  String get photo => 'Основное';

  @override
  String get reference => 'Фото референс';

  @override
  String get scan => 'Скан';

  @override
  String get save => 'Сохранить';

  @override
  String get cancel => 'Отмена';

  @override
  String get delete => 'Удалить';

  @override
  String get confirmDelete => 'Вы уверены, что хотите удалить эту работу?';

  @override
  String get confirmDeleteImage => 'Вы уверены, что хотите удалить это изображение?';

  @override
  String get yes => 'Да';

  @override
  String get no => 'Нет';

  @override
  String get settings => 'Настройки';

  @override
  String get language => 'Язык';

  @override
  String get about => 'О приложении';

  @override
  String get version => 'Версия';

  @override
  String get search => 'Поиск';

  @override
  String get searchHint => 'Точный поиск';

  @override
  String get noArtworks => 'Пока нет работ';

  @override
  String get noArtworksHint => 'Нажмите + чтобы добавить первую работу';

  @override
  String get loading => 'Загрузка...';

  @override
  String get error => 'Ошибка';

  @override
  String get retry => 'Повторить';

  @override
  String get uploadingImage => 'Загрузка изображения...';

  @override
  String get imageUploaded => 'Изображение загружено';

  @override
  String get imageFailed => 'Ошибка загрузки изображения';

  @override
  String get artworkSaved => 'Работа сохранена';

  @override
  String get artworkDeleted => 'Работа удалена';

  @override
  String get requiredField => 'Это поле обязательно';

  @override
  String get invalidYear => 'Пожалуйста, введите корректный год';

  @override
  String get invalidMonth => 'Пожалуйста, введите месяц от 1 до 12';

  @override
  String get selectImageTag => 'Выберите тип изображения';

  @override
  String get gallery => 'Галерея';

  @override
  String get camera => 'Камера';

  @override
  String get selectSource => 'Выберите источник изображения';

  @override
  String get id => 'ID';

  @override
  String get createdAt => 'Загружено';

  @override
  String get filterByMedium => 'Фильтр по технике';

  @override
  String get filterByYear => 'Фильтр по году';

  @override
  String get allMedia => 'Все техники';

  @override
  String get allYears => 'Все годы';

  @override
  String get sortBy => 'Сортировать по';

  @override
  String get sortByName => 'Названию';

  @override
  String get sortByDate => 'Дате';

  @override
  String get sortByCreated => 'Создания';

  @override
  String get ascending => 'По возрастанию';

  @override
  String get descending => 'По убыванию';

  @override
  String get back => 'Назад';

  @override
  String get close => 'Закрыть';

  @override
  String get copy => 'Копировать';

  @override
  String get skip => 'Пропустить';

  @override
  String get done => 'Готово';

  @override
  String get reset => 'Сбросить';

  @override
  String get cloudConnection => 'Облачное подключение';

  @override
  String get cloudConnectionSubtitle => 'Перенастроить подключение Supabase';

  @override
  String get resetCloudConnection => 'Сбросить облачное подключение';

  @override
  String get resetCloudConnectionMessage => 'Это отключит приложение от вашего проекта Supabase. Вам нужно будет снова запустить мастер настройки.\n\nВаши данные в Supabase НЕ будут удалены.';

  @override
  String get restartToReconfigure => 'Пожалуйста, перезапустите приложение для перенастройки';

  @override
  String get databasePaused => 'База данных приостановлена';

  @override
  String get databasePausedMessage => 'Ваш проект Supabase приостановлен из-за неактивности.\n\nДля восстановления:\n1. Перейдите на supabase.com/dashboard\n2. Выберите свой проект\n3. Нажмите \"Восстановить проект\"\n\nЭто займёт около 1 минуты.';

  @override
  String get setupTitle => 'Настройка Artive';

  @override
  String get setupWelcome => 'Добро пожаловать в Artive!';

  @override
  String get setupWelcomeDescription => 'Этот мастер поможет вам настроить облачное хранилище для каталога ваших работ.\n\nВаши работы и изображения будут надёжно храниться в Supabase, бесплатной облачной платформе.\n\nНастройка занимает около 5 минут.';

  @override
  String get setupWhatIsSupabase => 'Что такое Supabase?';

  @override
  String get setupWhatIsSupabaseContent => 'Supabase — это бесплатный сервис бэкенда с открытым исходным кодом. Он предоставляет базу данных и хранилище файлов для вашего приложения.';

  @override
  String get setupYourData => 'Ваши данные, ваш контроль';

  @override
  String get setupYourDataContent => 'Вы создаёте свой собственный аккаунт Supabase. Ваши данные принадлежат вам, и только вы имеете к ним доступ.';

  @override
  String get setupGetStarted => 'Начать';

  @override
  String get setupStep1Title => 'Шаг 1: Создание проекта Supabase';

  @override
  String get setupStep1_1 => 'Перейдите на supabase.com и создайте бесплатный аккаунт';

  @override
  String get setupOpenSupabase => 'Открыть Supabase';

  @override
  String get setupStep1_2 => 'Нажмите \"Новый проект\" в панели управления';

  @override
  String get setupStep1_3 => 'Выберите имя для проекта (например, \"artive\")';

  @override
  String get setupStep1_4 => 'Установите надёжный пароль базы данных (сохраните его!)';

  @override
  String get setupStep1_5 => 'Выберите ближайший к вам регион';

  @override
  String get setupStep1_6 => 'Нажмите \"Создать новый проект\" и подождите';

  @override
  String get setupFreeTier => 'Бесплатный план';

  @override
  String get setupFreeTierContent => 'Бесплатный план Supabase включает 500 МБ базы данных и 1 ГБ файлового хранилища — достаточно для тысяч работ!';

  @override
  String get setupProjectCreated => 'Проект создан';

  @override
  String get setupStep2Title => 'Шаг 2: Получение учётных данных';

  @override
  String get setupStep2_1 => 'В вашем проекте Supabase перейдите в \"Настройки проекта\" (значок шестерёнки)';

  @override
  String get setupStep2_2 => 'Нажмите на \"Data API\" в меню настроек';

  @override
  String get setupStep2_3 => 'Найдите \"Project URL\" — выглядит как: https://xxxxx.supabase.co';

  @override
  String get setupStep2_4 => 'Найдите ключ \"anon\" в разделе \"Project API keys\"';

  @override
  String get setupAboutApiKeys => 'Об API-ключах';

  @override
  String get setupAboutApiKeysContent => 'Ключ anon безопасен для приложений. Он работает с политиками Row Level Security.';

  @override
  String get setupCredentialsTip => 'Совет: Вы можете нажать кнопку копирования рядом с каждым значением в Supabase.';

  @override
  String get setupIHaveCredentials => 'У меня есть учётные данные';

  @override
  String get setupStep3Title => 'Шаг 3: Ввод учётных данных';

  @override
  String get setupProjectUrl => 'URL проекта';

  @override
  String get setupAnonKey => 'Ключ Anon';

  @override
  String get setupValidateAndContinue => 'Проверить и продолжить';

  @override
  String get setupStep4Title => 'Шаг 4: Настройка базы данных';

  @override
  String get setupManualSetupRequired => 'Требуется ручная настройка';

  @override
  String get setupDatabaseManualContent => 'Таблицы базы данных необходимо создать вручную. Это одноразовая настройка.';

  @override
  String get setupStep4_1 => 'В Supabase перейдите в \"SQL Editor\" на боковой панели';

  @override
  String get setupStep4_2 => 'Нажмите \"Новый запрос\"';

  @override
  String get setupStep4_3 => 'Скопируйте и вставьте следующий SQL:';

  @override
  String get setupStep4_4 => 'Нажмите \"Выполнить\" для выполнения запроса';

  @override
  String get setupStep4_5 => 'Вы должны увидеть \"Успешно. Строки не возвращены\"';

  @override
  String get setupSqlCopied => 'SQL скопирован в буфер обмена';

  @override
  String get setupCheckingDatabase => 'Проверка базы данных...';

  @override
  String get setupIveRunSql => 'Я выполнил SQL';

  @override
  String get setupCheckDatabase => 'Проверить базу данных';

  @override
  String get setupStep5Title => 'Шаг 5: Настройка хранилища';

  @override
  String get setupStorageManualContent => 'Создайте корзину хранилища для изображений ваших работ.';

  @override
  String get setupStep5_1 => 'В Supabase перейдите в \"Storage\" на боковой панели';

  @override
  String get setupStep5_2 => 'Нажмите \"Новая корзина\"';

  @override
  String get setupStep5_3 => 'Назовите её точно: artworks';

  @override
  String get setupStep5_4 => 'Оставьте \"Публичная корзина\" ВЫКЛЮЧЕННОЙ (рекомендуется)';

  @override
  String get setupStep5_5 => 'Нажмите \"Создать корзину\"';

  @override
  String get setupAddStoragePolicy => 'Добавить политику хранилища';

  @override
  String get setupAddStoragePolicyContent => 'Нажмите на корзину → Политики → Новая политика → \"Для полной настройки\" → Имя: allow_all → Отметьте все операции → Сохранить.';

  @override
  String get setupSettingUpStorage => 'Настройка хранилища...';

  @override
  String get setupSetupStorage => 'Настроить хранилище';

  @override
  String get setupComplete => 'Настройка завершена!';

  @override
  String get setupCompleteDescription => 'Artive теперь подключён к вашему проекту Supabase.\n\nВы можете начать добавлять свои работы!';

  @override
  String get setupQuickTips => 'Быстрые советы';

  @override
  String get setupQuickTipsContent => '• Нажмите +, чтобы добавить первую работу\n• Добавляйте несколько изображений с разными тегами (основное, референс, скан)\n• Используйте поиск и фильтры для быстрого поиска работ\n• Измените язык в настройках';

  @override
  String get setupStartUsing => 'Начать использовать Artive';

  @override
  String get openInBrowser => 'Открыть в браузере';

  @override
  String get couldNotOpenBrowser => 'Не удалось открыть браузер автоматически. Пожалуйста, скопируйте этот URL и откройте вручную:';

  @override
  String get urlCopied => 'URL скопирован в буфер обмена';

  @override
  String get backupRestore => 'Резервное копирование и восстановление';

  @override
  String get backupRestoreSubtitle => 'Экспорт или импорт ваших данных';

  @override
  String get createBackup => 'Создать резервную копию';

  @override
  String get createBackupDescription => 'Экспортируйте все ваши произведения и изображения в ZIP-файл, который можно сохранить или поделиться.';

  @override
  String get restoreBackup => 'Восстановить резервную копию';

  @override
  String get restoreBackupDescription => 'Импортируйте произведения и изображения из ранее созданного файла резервной копии.';

  @override
  String get restoreBackupConfirm => 'Как вы хотите восстановить резервную копию?';

  @override
  String get restoreMerge => 'Объединить с существующими';

  @override
  String get restoreReplace => 'Заменить все';

  @override
  String get backupCreated => 'Резервная копия успешно создана';

  @override
  String restoreComplete(int count) {
    return 'Восстановлено $count произведений';
  }

  @override
  String get backupNote => 'Резервные копии включают все данные о работах и изображениях. Храните их в безопасности!';

  @override
  String itemsSelected(int count) {
    return 'Выбрано $count';
  }

  @override
  String confirmDeleteMultiple(int count) {
    return 'Удалить $count работ(ы)?';
  }

  @override
  String artworksDeleted(int count) {
    return '$count работ(ы) удалено';
  }

  @override
  String get selectAll => 'Выбрать все';
}
