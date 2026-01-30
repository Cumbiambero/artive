// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Japanese (`ja`).
class AppLocalizationsJa extends AppLocalizations {
  AppLocalizationsJa([String locale = 'ja']) : super(locale);

  @override
  String get appTitle => 'Artive';

  @override
  String get artworks => '作品';

  @override
  String get addArtwork => '作品を追加';

  @override
  String get editArtwork => '作品を編集';

  @override
  String get deleteArtwork => '作品を削除';

  @override
  String get name => '名前';

  @override
  String get description => '説明';

  @override
  String get descriptionOptional => '説明（任意）';

  @override
  String get date => '作成日';

  @override
  String get month => '月';

  @override
  String get year => '年';

  @override
  String get dimension => 'サイズ';

  @override
  String get dimensionHint => '例：50x70 cm';

  @override
  String get medium => '技法';

  @override
  String get mediumHint => '例：キャンバスに油彩';

  @override
  String get images => '画像';

  @override
  String get addImage => '画像を追加';

  @override
  String get photo => 'メイン';

  @override
  String get reference => '参考写真';

  @override
  String get scan => 'スキャン';

  @override
  String get save => '保存';

  @override
  String get cancel => 'キャンセル';

  @override
  String get delete => '削除';

  @override
  String get confirmDelete => 'この作品を削除してもよろしいですか？';

  @override
  String get confirmDeleteImage => 'この画像を削除してもよろしいですか？';

  @override
  String get yes => 'はい';

  @override
  String get no => 'いいえ';

  @override
  String get settings => '設定';

  @override
  String get language => '言語';

  @override
  String get about => 'アプリについて';

  @override
  String get version => 'バージョン';

  @override
  String get search => '検索';

  @override
  String get searchHint => '完全一致検索';

  @override
  String get noArtworks => 'まだ作品がありません';

  @override
  String get noArtworksHint => '+をタップして最初の作品を追加';

  @override
  String get loading => '読み込み中...';

  @override
  String get error => 'エラー';

  @override
  String get retry => '再試行';

  @override
  String get uploadingImage => '画像をアップロード中...';

  @override
  String get imageUploaded => '画像がアップロードされました';

  @override
  String get imageFailed => '画像のアップロードに失敗しました';

  @override
  String get artworkSaved => '作品が保存されました';

  @override
  String get artworkDeleted => '作品が削除されました';

  @override
  String get requiredField => 'この項目は必須です';

  @override
  String get invalidYear => '有効な年を入力してください';

  @override
  String get invalidMonth => '1から12の月を入力してください';

  @override
  String get selectImageTag => '画像タイプを選択';

  @override
  String get gallery => 'ギャラリー';

  @override
  String get camera => 'カメラ';

  @override
  String get selectSource => '画像ソースを選択';

  @override
  String get id => 'ID';

  @override
  String get createdAt => 'アップロード日';

  @override
  String get filterByMedium => '技法でフィルター';

  @override
  String get filterByYear => '年でフィルター';

  @override
  String get allMedia => 'すべての技法';

  @override
  String get allYears => 'すべての年';

  @override
  String get sortBy => '並び替え';

  @override
  String get sortByName => '名前';

  @override
  String get sortByDate => '日付';

  @override
  String get sortByCreated => '作成日';

  @override
  String get ascending => '昇順';

  @override
  String get descending => '降順';

  @override
  String get back => '戻る';

  @override
  String get close => '閉じる';

  @override
  String get copy => 'コピー';

  @override
  String get skip => 'スキップ';

  @override
  String get done => '完了';

  @override
  String get reset => 'リセット';

  @override
  String get cloudConnection => 'クラウド接続';

  @override
  String get cloudConnectionSubtitle => 'Supabase接続を再設定';

  @override
  String get resetCloudConnection => 'クラウド接続をリセット';

  @override
  String get resetCloudConnectionMessage => 'これによりアプリがSupabaseプロジェクトから切断されます。セットアップウィザードを再度実行する必要があります。\n\nSupabase内のデータは削除されません。';

  @override
  String get restartToReconfigure => '再設定するにはアプリを再起動してください';

  @override
  String get databasePaused => 'データベースが一時停止中';

  @override
  String get databasePausedMessage => 'Supabaseプロジェクトは非アクティブのため一時停止しています。\n\n復元するには：\n1. supabase.com/dashboardにアクセス\n2. プロジェクトを選択\n3. 「プロジェクトを復元」をクリック\n\n約1分かかります。';

  @override
  String get setupTitle => 'Artiveセットアップ';

  @override
  String get setupWelcome => 'Artiveへようこそ！';

  @override
  String get setupWelcomeDescription => 'このウィザードでは、作品カタログのクラウドストレージを設定します。\n\n作品と画像は、無料のクラウドプラットフォームSupabaseに安全に保存されます。\n\nセットアップには約5分かかります。';

  @override
  String get setupWhatIsSupabase => 'Supabaseとは？';

  @override
  String get setupWhatIsSupabaseContent => 'Supabaseは無料のオープンソースバックエンドサービスです。アプリにデータベースとファイルストレージを提供します。';

  @override
  String get setupYourData => 'あなたのデータ、あなたの管理';

  @override
  String get setupYourDataContent => 'ご自身のSupabaseアカウントを作成します。データはあなたのものであり、アクセスできるのはあなただけです。';

  @override
  String get setupGetStarted => '始める';

  @override
  String get setupStep1Title => 'ステップ1：Supabaseプロジェクトを作成';

  @override
  String get setupStep1_1 => 'supabase.comにアクセスして無料アカウントを作成';

  @override
  String get setupOpenSupabase => 'Supabaseを開く';

  @override
  String get setupStep1_2 => 'ダッシュボードで「新規プロジェクト」をクリック';

  @override
  String get setupStep1_3 => 'プロジェクト名を選択（例：「artive」）';

  @override
  String get setupStep1_4 => '安全なデータベースパスワードを設定（保存してください！）';

  @override
  String get setupStep1_5 => '近くのリージョンを選択';

  @override
  String get setupStep1_6 => '「新規プロジェクト作成」をクリックして待機';

  @override
  String get setupFreeTier => '無料プラン';

  @override
  String get setupFreeTierContent => 'Supabase無料プランには500MBのデータベースと1GBのファイルストレージが含まれます。数千の作品に十分です！';

  @override
  String get setupProjectCreated => 'プロジェクト作成完了';

  @override
  String get setupStep2Title => 'ステップ2：認証情報を取得';

  @override
  String get setupStep2_1 => 'Supabaseプロジェクトで「プロジェクト設定」（歯車アイコン）に移動';

  @override
  String get setupStep2_2 => '設定メニューで「Data API」をクリック';

  @override
  String get setupStep2_3 => '「Project URL」を探す - 形式：https://xxxxx.supabase.co';

  @override
  String get setupStep2_4 => '「Project API keys」の下にある「anon」キーを探す';

  @override
  String get setupAboutApiKeys => 'APIキーについて';

  @override
  String get setupAboutApiKeysContent => 'anonキーはアプリで安全に使用できます。Row Level Securityポリシーと連携します。';

  @override
  String get setupCredentialsTip => 'ヒント：Supabaseの各値の横にあるコピーボタンをクリックできます。';

  @override
  String get setupIHaveCredentials => '認証情報を取得しました';

  @override
  String get setupStep3Title => 'ステップ3：認証情報を入力';

  @override
  String get setupProjectUrl => 'プロジェクトURL';

  @override
  String get setupAnonKey => 'Anonキー';

  @override
  String get setupValidateAndContinue => '検証して続行';

  @override
  String get setupStep4Title => 'ステップ4：データベースセットアップ';

  @override
  String get setupManualSetupRequired => '手動セットアップが必要';

  @override
  String get setupDatabaseManualContent => 'データベーステーブルは手動で作成する必要があります。これは一度だけの設定です。';

  @override
  String get setupStep4_1 => 'Supabaseのサイドバーで「SQL Editor」に移動';

  @override
  String get setupStep4_2 => '「新規クエリ」をクリック';

  @override
  String get setupStep4_3 => '以下のSQLをコピーして貼り付け：';

  @override
  String get setupStep4_4 => '「実行」をクリックしてクエリを実行';

  @override
  String get setupStep4_5 => '「成功。行は返されませんでした」と表示されるはずです';

  @override
  String get setupSqlCopied => 'SQLをクリップボードにコピーしました';

  @override
  String get setupCheckingDatabase => 'データベースを確認中...';

  @override
  String get setupIveRunSql => 'SQLを実行しました';

  @override
  String get setupCheckDatabase => 'データベースを確認';

  @override
  String get setupStep5Title => 'ステップ5：ストレージセットアップ';

  @override
  String get setupStorageManualContent => '作品画像用のストレージバケットを作成します。';

  @override
  String get setupStep5_1 => 'Supabaseのサイドバーで「Storage」に移動';

  @override
  String get setupStep5_2 => '「新規バケット」をクリック';

  @override
  String get setupStep5_3 => '名前を正確に：artworks';

  @override
  String get setupStep5_4 => '「公開バケット」はオフのまま（推奨）';

  @override
  String get setupStep5_5 => '「バケット作成」をクリック';

  @override
  String get setupAddStoragePolicy => 'ストレージポリシーを追加';

  @override
  String get setupAddStoragePolicyContent => 'バケット → ポリシー → 新規ポリシー → 「完全カスタマイズ」 → 名前：allow_all → すべての操作にチェック → 保存。';

  @override
  String get setupSettingUpStorage => 'ストレージを設定中...';

  @override
  String get setupSetupStorage => 'ストレージをセットアップ';

  @override
  String get setupComplete => 'セットアップ完了！';

  @override
  String get setupCompleteDescription => 'ArtiveがSupabaseプロジェクトに接続されました。\n\n作品の追加を開始できます！';

  @override
  String get setupQuickTips => 'クイックヒント';

  @override
  String get setupQuickTipsContent => '• +をタップして最初の作品を追加\n• 異なるタグで複数の画像を追加（メイン、参照、スキャン）\n• 検索とフィルターで作品を素早く見つける\n• 設定で言語を変更';

  @override
  String get setupStartUsing => 'Artiveを使い始める';

  @override
  String get openInBrowser => 'ブラウザで開く';

  @override
  String get couldNotOpenBrowser => 'ブラウザを自動で開けませんでした。このURLをコピーして手動で開いてください：';

  @override
  String get urlCopied => 'URL をクリップボードにコピーしました';

  @override
  String get backupRestore => 'バックアップと復元';

  @override
  String get backupRestoreSubtitle => 'データをエクスポートまたはインポート';

  @override
  String get createBackup => 'バックアップを作成';

  @override
  String get createBackupDescription => 'すべての作品と画像をZIPファイルにエクスポートして、保存または共有できます。';

  @override
  String get restoreBackup => 'バックアップを復元';

  @override
  String get restoreBackupDescription => '以前に作成したバックアップファイルから作品と画像をインポートします。';

  @override
  String get restoreBackupConfirm => 'バックアップをどのように復元しますか？';

  @override
  String get restoreMerge => '既存のものと統合';

  @override
  String get restoreReplace => 'すべて置き換え';

  @override
  String get backupCreated => 'バックアップが正常に作成されました';

  @override
  String restoreComplete(int count) {
    return '$count件の作品を復元しました';
  }

  @override
  String get backupNote => 'バックアップにはすべての作品と画像データが含まれます。安全に保管してください！';

  @override
  String itemsSelected(int count) {
    return '$count件選択中';
  }

  @override
  String confirmDeleteMultiple(int count) {
    return '$count件の作品を削除しますか？';
  }

  @override
  String artworksDeleted(int count) {
    return '$count件の作品を削除しました';
  }

  @override
  String get selectAll => 'すべて選択';
}
