// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Chinese (`zh`).
class AppLocalizationsZh extends AppLocalizations {
  AppLocalizationsZh([String locale = 'zh']) : super(locale);

  @override
  String get appTitle => 'Artive';

  @override
  String get artworks => '作品';

  @override
  String get addArtwork => '添加作品';

  @override
  String get editArtwork => '编辑作品';

  @override
  String get deleteArtwork => '删除作品';

  @override
  String get name => '名称';

  @override
  String get description => '描述';

  @override
  String get descriptionOptional => '描述（可选）';

  @override
  String get date => '创建于';

  @override
  String get month => '月';

  @override
  String get year => '年';

  @override
  String get dimension => '尺寸';

  @override
  String get dimensionHint => '例如：50x70 厘米';

  @override
  String get medium => '媒介';

  @override
  String get mediumHint => '例如：布面油画';

  @override
  String get images => '图片';

  @override
  String get addImage => '添加图片';

  @override
  String get photo => '主图';

  @override
  String get reference => '照片参考';

  @override
  String get scan => '扫描';

  @override
  String get save => '保存';

  @override
  String get cancel => '取消';

  @override
  String get delete => '删除';

  @override
  String get confirmDelete => '确定要删除这件作品吗？';

  @override
  String get confirmDeleteImage => '确定要删除这张图片吗？';

  @override
  String get yes => '是';

  @override
  String get no => '否';

  @override
  String get settings => '设置';

  @override
  String get language => '语言';

  @override
  String get about => '关于';

  @override
  String get version => '版本';

  @override
  String get search => '搜索';

  @override
  String get searchHint => '精确匹配搜索';

  @override
  String get noArtworks => '还没有作品';

  @override
  String get noArtworksHint => '点击 + 添加您的第一件作品';

  @override
  String get loading => '加载中...';

  @override
  String get error => '错误';

  @override
  String get retry => '重试';

  @override
  String get uploadingImage => '正在上传图片...';

  @override
  String get imageUploaded => '图片已上传';

  @override
  String get imageFailed => '图片上传失败';

  @override
  String get artworkSaved => '作品已保存';

  @override
  String get artworkDeleted => '作品已删除';

  @override
  String get requiredField => '此字段为必填项';

  @override
  String get invalidYear => '请输入有效的年份';

  @override
  String get invalidMonth => '请输入1到12之间的月份';

  @override
  String get selectImageTag => '选择图片类型';

  @override
  String get gallery => '图库';

  @override
  String get camera => '相机';

  @override
  String get selectSource => '选择图片来源';

  @override
  String get id => '编号';

  @override
  String get createdAt => '上传于';

  @override
  String get filterByMedium => '按媒介筛选';

  @override
  String get filterByYear => '按年份筛选';

  @override
  String get allMedia => '所有媒介';

  @override
  String get allYears => '所有年份';

  @override
  String get sortBy => '排序方式';

  @override
  String get sortByName => '名称';

  @override
  String get sortByDate => '日期';

  @override
  String get sortByCreated => '创建时间';

  @override
  String get ascending => '升序';

  @override
  String get descending => '降序';

  @override
  String get back => '返回';

  @override
  String get close => '关闭';

  @override
  String get copy => '复制';

  @override
  String get skip => '跳过';

  @override
  String get done => '完成';

  @override
  String get reset => '重置';

  @override
  String get cloudConnection => '云连接';

  @override
  String get cloudConnectionSubtitle => '重新配置 Supabase 连接';

  @override
  String get resetCloudConnection => '重置云连接';

  @override
  String get resetCloudConnectionMessage => '这将断开应用与您的 Supabase 项目的连接。您需要重新运行设置向导。\n\n您在 Supabase 中的数据不会被删除。';

  @override
  String get restartToReconfigure => '请重启应用以重新配置';

  @override
  String get databasePaused => '数据库已暂停';

  @override
  String get databasePausedMessage => '您的 Supabase 项目因不活动而暂停。\n\n恢复步骤：\n1. 前往 supabase.com/dashboard\n2. 选择您的项目\n3. 点击恢复项目\n\n这大约需要1分钟。';

  @override
  String get setupTitle => 'Artive 设置';

  @override
  String get setupWelcome => '欢迎使用 Artive！';

  @override
  String get setupWelcomeDescription => '此向导将帮助您为艺术品目录设置云存储。\n\n您的作品和图片将安全存储在 Supabase（一个免费的云平台）中。\n\n设置大约需要5分钟。';

  @override
  String get setupWhatIsSupabase => '什么是 Supabase？';

  @override
  String get setupWhatIsSupabaseContent => 'Supabase 是一个免费的开源后端服务。它为您的应用提供数据库和文件存储。';

  @override
  String get setupYourData => '您的数据，由您掌控';

  @override
  String get setupYourDataContent => '您创建自己的 Supabase 账户。您的数据属于您，只有您可以访问。';

  @override
  String get setupGetStarted => '开始';

  @override
  String get setupStep1Title => '步骤 1：创建 Supabase 项目';

  @override
  String get setupStep1_1 => '前往 supabase.com 创建免费账户';

  @override
  String get setupOpenSupabase => '打开 Supabase';

  @override
  String get setupStep1_2 => '在控制面板中点击新建项目';

  @override
  String get setupStep1_3 => '为项目选择一个名称（例如 artive）';

  @override
  String get setupStep1_4 => '设置安全的数据库密码（请妥善保存！）';

  @override
  String get setupStep1_5 => '选择离您较近的区域';

  @override
  String get setupStep1_6 => '点击创建新项目并等待完成';

  @override
  String get setupFreeTier => '免费套餐';

  @override
  String get setupFreeTierContent => 'Supabase 免费套餐包括 500MB 数据库和 1GB 文件存储——足够存储数千件作品！';

  @override
  String get setupProjectCreated => '项目已创建';

  @override
  String get setupStep2Title => '步骤 2：获取凭据';

  @override
  String get setupStep2_1 => '在您的 Supabase 项目中，转到项目设置（齿轮图标）';

  @override
  String get setupStep2_2 => '在设置菜单中点击 Data API';

  @override
  String get setupStep2_3 => '找到Project URL——格式如：https://xxxxx.supabase.co';

  @override
  String get setupStep2_4 => '在 Project API keys 下找到 anon 密钥';

  @override
  String get setupAboutApiKeys => '关于 API 密钥';

  @override
  String get setupAboutApiKeysContent => 'anon 密钥对应用程序是安全的。它与行级安全策略配合使用。';

  @override
  String get setupCredentialsTip => '提示：您可以点击 Supabase 中每个值旁边的复制按钮。';

  @override
  String get setupIHaveCredentials => '我已获取凭据';

  @override
  String get setupStep3Title => '步骤 3：输入凭据';

  @override
  String get setupProjectUrl => '项目 URL';

  @override
  String get setupAnonKey => 'Anon 密钥';

  @override
  String get setupValidateAndContinue => '验证并继续';

  @override
  String get setupStep4Title => '步骤 4：数据库设置';

  @override
  String get setupManualSetupRequired => '需要手动设置';

  @override
  String get setupDatabaseManualContent => '需要手动创建数据库表。这是一次性设置。';

  @override
  String get setupStep4_1 => '在 Supabase 侧边栏中转到 SQL Editor';

  @override
  String get setupStep4_2 => '点击新建查询';

  @override
  String get setupStep4_3 => '复制并粘贴以下 SQL：';

  @override
  String get setupStep4_4 => '点击运行执行查询';

  @override
  String get setupStep4_5 => '您应该看到成功。没有返回行';

  @override
  String get setupSqlCopied => 'SQL 已复制到剪贴板';

  @override
  String get setupCheckingDatabase => '正在检查数据库...';

  @override
  String get setupIveRunSql => '我已运行 SQL';

  @override
  String get setupCheckDatabase => '检查数据库';

  @override
  String get setupStep5Title => '步骤 5：存储设置';

  @override
  String get setupStorageManualContent => '为您的作品图片创建存储桶。';

  @override
  String get setupStep5_1 => '在 Supabase 侧边栏中转到 Storage';

  @override
  String get setupStep5_2 => '点击新建存储桶';

  @override
  String get setupStep5_3 => '将其命名为：artworks';

  @override
  String get setupStep5_4 => '保持公共存储桶为关闭状态（推荐）';

  @override
  String get setupStep5_5 => '点击创建存储桶';

  @override
  String get setupAddStoragePolicy => '添加存储策略';

  @override
  String get setupAddStoragePolicyContent => '点击存储桶 → 策略 → 新建策略 → 完全自定义 → 名称：allow_all → 勾选所有操作 → 保存。';

  @override
  String get setupSettingUpStorage => '正在设置存储...';

  @override
  String get setupSetupStorage => '设置存储';

  @override
  String get setupComplete => '设置完成！';

  @override
  String get setupCompleteDescription => 'Artive 现已连接到您的 Supabase 项目。\n\n您可以开始添加作品了！';

  @override
  String get setupQuickTips => '快速提示';

  @override
  String get setupQuickTipsContent => '• 点击 + 添加您的第一件作品\n• 添加多张带有不同标签的图片（主图、参考、扫描）\n• 使用搜索和筛选快速查找作品\n• 在设置中更改语言';

  @override
  String get setupStartUsing => '开始使用 Artive';

  @override
  String get openInBrowser => '在浏览器中打开';

  @override
  String get couldNotOpenBrowser => '无法自动打开浏览器。请复制此 URL 并手动打开：';

  @override
  String get urlCopied => 'URL 已复制到剪贴板';

  @override
  String get backupRestore => '备份与恢复';

  @override
  String get backupRestoreSubtitle => '导出或导入你的数据';

  @override
  String get createBackup => '创建备份';

  @override
  String get createBackupDescription => '将所有作品和图片导出为 ZIP 文件，以便保存或分享。';

  @override
  String get restoreBackup => '恢复备份';

  @override
  String get restoreBackupDescription => '从之前创建的备份文件导入作品和图片。';

  @override
  String get restoreBackupConfirm => '你想如何恢复备份？';

  @override
  String get restoreMerge => '与现有内容合并';

  @override
  String get restoreReplace => '替换全部';

  @override
  String get backupCreated => '备份创建成功';

  @override
  String restoreComplete(int count) {
    return '已恢复 $count 件作品';
  }

  @override
  String get backupNote => 'Backups include all artwork data and images. Store them safely!';
}
