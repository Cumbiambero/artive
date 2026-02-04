// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Korean (`ko`).
class AppLocalizationsKo extends AppLocalizations {
  AppLocalizationsKo([String locale = 'ko']) : super(locale);

  @override
  String get appTitle => 'Artive';

  @override
  String get artworks => '작품';

  @override
  String get addArtwork => '작품 추가';

  @override
  String get editArtwork => '작품 편집';

  @override
  String get deleteArtwork => '작품 삭제';

  @override
  String get name => '이름';

  @override
  String get description => '설명';

  @override
  String get descriptionOptional => '설명 (선택사항)';

  @override
  String get date => '제작일';

  @override
  String get month => '월';

  @override
  String get year => '년';

  @override
  String get dimension => '크기';

  @override
  String get dimensionHint => '예: 50x70 cm';

  @override
  String get medium => '기법';

  @override
  String get mediumHint => '예: 캔버스에 유채';

  @override
  String get images => '이미지';

  @override
  String get addImage => '이미지 추가';

  @override
  String get photo => '메인';

  @override
  String get reference => '사진 참조';

  @override
  String get scan => '스캔';

  @override
  String get save => '저장';

  @override
  String get cancel => '취소';

  @override
  String get delete => '삭제';

  @override
  String get confirmDelete => '이 작품을 삭제하시겠습니까?';

  @override
  String get confirmDeleteImage => '이 이미지를 삭제하시겠습니까?';

  @override
  String get yes => '예';

  @override
  String get no => '아니오';

  @override
  String get settings => '설정';

  @override
  String get language => '언어';

  @override
  String get about => '정보';

  @override
  String get version => '버전';

  @override
  String get search => '검색';

  @override
  String get searchHint => '정확히 일치 검색';

  @override
  String get noArtworks => '아직 작품이 없습니다';

  @override
  String get noArtworksHint => '+를 눌러 첫 번째 작품을 추가하세요';

  @override
  String get loading => '로딩 중...';

  @override
  String get error => '오류';

  @override
  String get retry => '다시 시도';

  @override
  String get uploadingImage => '이미지 업로드 중...';

  @override
  String get imageUploaded => '이미지 업로드됨';

  @override
  String get imageFailed => '이미지 업로드 실패';

  @override
  String get artworkSaved => '작품이 저장됨';

  @override
  String get artworkDeleted => '작품이 삭제됨';

  @override
  String get requiredField => '필수 항목입니다';

  @override
  String get invalidYear => '유효한 연도를 입력하세요';

  @override
  String get invalidMonth => '1에서 12 사이의 월을 입력하세요';

  @override
  String get selectImageTag => '이미지 유형 선택';

  @override
  String get gallery => '갤러리';

  @override
  String get camera => '카메라';

  @override
  String get selectSource => '이미지 소스 선택';

  @override
  String get id => 'ID';

  @override
  String get createdAt => '업로드일';

  @override
  String get filterByMedium => '기법으로 필터';

  @override
  String get filterByYear => '연도로 필터';

  @override
  String get allMedia => '모든 기법';

  @override
  String get allYears => '모든 연도';

  @override
  String get sortBy => '정렬 기준';

  @override
  String get sortByName => '이름';

  @override
  String get sortByDate => '날짜';

  @override
  String get sortByCreated => '생성일';

  @override
  String get ascending => '오름차순';

  @override
  String get descending => '내림차순';

  @override
  String get back => '뒤로';

  @override
  String get close => '닫기';

  @override
  String get copy => '복사';

  @override
  String get skip => '건너뛰기';

  @override
  String get done => '완료';

  @override
  String get reset => '재설정';

  @override
  String get cloudConnection => '클라우드 연결';

  @override
  String get cloudConnectionSubtitle => 'Supabase 연결 재구성';

  @override
  String get resetCloudConnection => '클라우드 연결 재설정';

  @override
  String get resetCloudConnectionMessage => '앱이 Supabase 프로젝트에서 연결 해제됩니다. 설정 마법사를 다시 실행해야 합니다.\n\nSupabase의 데이터는 삭제되지 않습니다.';

  @override
  String get restartToReconfigure => '재구성하려면 앱을 다시 시작하세요';

  @override
  String get databasePaused => '데이터베이스 일시 중지됨';

  @override
  String get databasePausedMessage => 'Supabase 프로젝트가 비활성으로 인해 일시 중지되었습니다.\n\n복원하려면:\n1. supabase.com/dashboard로 이동\n2. 프로젝트 선택\n3. \"프로젝트 복원\" 클릭\n\n약 1분 소요됩니다.';

  @override
  String get setupTitle => 'Artive 설정';

  @override
  String get setupWelcome => 'Artive에 오신 것을 환영합니다!';

  @override
  String get setupWelcomeDescription => '이 마법사는 작품 카탈로그를 위한 클라우드 스토리지 설정을 도와드립니다.\n\n작품과 이미지는 무료 클라우드 플랫폼인 Supabase에 안전하게 저장됩니다.\n\n설정은 약 5분 정도 소요됩니다.';

  @override
  String get setupWhatIsSupabase => 'Supabase란?';

  @override
  String get setupWhatIsSupabaseContent => 'Supabase는 무료 오픈소스 백엔드 서비스입니다. 앱을 위한 데이터베이스와 파일 스토리지를 제공합니다.';

  @override
  String get setupYourData => '당신의 데이터, 당신의 통제';

  @override
  String get setupYourDataContent => '자신만의 Supabase 계정을 만듭니다. 데이터는 당신의 것이며 당신만 접근할 수 있습니다.';

  @override
  String get setupGetStarted => '시작하기';

  @override
  String get setupStep1Title => '1단계: Supabase 프로젝트 생성';

  @override
  String get setupStep1_1 => 'supabase.com에서 무료 계정 생성';

  @override
  String get setupOpenSupabase => 'Supabase 열기';

  @override
  String get setupStep1_2 => '대시보드에서 \"새 프로젝트\" 클릭';

  @override
  String get setupStep1_3 => '프로젝트 이름 선택 (예: \"Artive\")';

  @override
  String get setupStep1_4 => '안전한 데이터베이스 비밀번호 설정 (저장해두세요!)';

  @override
  String get setupStep1_5 => '가까운 지역 선택';

  @override
  String get setupStep1_6 => '\"새 프로젝트 만들기\" 클릭 후 대기';

  @override
  String get setupFreeTier => '무료 플랜';

  @override
  String get setupFreeTierContent => 'Supabase 무료 플랜에는 500MB 데이터베이스와 1GB 파일 스토리지가 포함됩니다 - 수천 개의 작품에 충분합니다!';

  @override
  String get setupProjectCreated => '프로젝트 생성됨';

  @override
  String get setupStep2Title => '2단계: 자격 증명 가져오기';

  @override
  String get setupStep2_1 => 'Supabase 프로젝트에서 \"프로젝트 설정\" (톱니바퀴 아이콘)으로 이동';

  @override
  String get setupStep2_2 => '설정 메뉴에서 \"Data API\" 클릭';

  @override
  String get setupStep2_3 => '\"Project URL\" 찾기 - 형식: https://xxxxx.supabase.co';

  @override
  String get setupStep2_4 => '\"Project API keys\"에서 \"anon\" 키 찾기';

  @override
  String get setupAboutApiKeys => 'API 키 정보';

  @override
  String get setupAboutApiKeysContent => 'anon 키는 앱에서 안전하게 사용할 수 있습니다. Row Level Security 정책과 함께 작동합니다.';

  @override
  String get setupCredentialsTip => '팁: Supabase에서 각 값 옆의 복사 버튼을 클릭할 수 있습니다.';

  @override
  String get setupIHaveCredentials => '자격 증명을 가져왔습니다';

  @override
  String get setupStep3Title => '3단계: 자격 증명 입력';

  @override
  String get setupProjectUrl => '프로젝트 URL';

  @override
  String get setupAnonKey => 'Anon 키';

  @override
  String get setupValidateAndContinue => '검증 및 계속';

  @override
  String get setupStep4Title => '4단계: 데이터베이스 설정';

  @override
  String get setupManualSetupRequired => '수동 설정 필요';

  @override
  String get setupDatabaseManualContent => '데이터베이스 테이블을 수동으로 생성해야 합니다. 이것은 일회성 설정입니다.';

  @override
  String get setupStep4_1 => 'Supabase 사이드바에서 \"SQL Editor\"로 이동';

  @override
  String get setupStep4_2 => '\"새 쿼리\" 클릭';

  @override
  String get setupStep4_3 => '다음 SQL을 복사하여 붙여넣기:';

  @override
  String get setupStep4_4 => '\"실행\"을 클릭하여 쿼리 실행';

  @override
  String get setupStep4_5 => '\"성공. 반환된 행 없음\"이 표시되어야 합니다';

  @override
  String get setupSqlCopied => 'SQL이 클립보드에 복사됨';

  @override
  String get setupCheckingDatabase => '데이터베이스 확인 중...';

  @override
  String get setupIveRunSql => 'SQL을 실행했습니다';

  @override
  String get setupCheckDatabase => '데이터베이스 확인';

  @override
  String get setupStep5Title => '5단계: 스토리지 설정';

  @override
  String get setupStorageManualContent => '작품 이미지용 스토리지 버킷을 생성합니다.';

  @override
  String get setupStep5_1 => 'Supabase 사이드바에서 \"Storage\"로 이동';

  @override
  String get setupStep5_2 => '\"새 버킷\" 클릭';

  @override
  String get setupStep5_3 => '이름을 정확히: artworks';

  @override
  String get setupStep5_4 => '\"공개 버킷\"은 꺼둠 (권장)';

  @override
  String get setupStep5_5 => '\"버킷 만들기\" 클릭';

  @override
  String get setupAddStoragePolicy => '스토리지 정책 추가';

  @override
  String get setupAddStoragePolicyContent => '버킷 클릭 → 정책 → 새 정책 → \"전체 사용자 지정\" → 이름: allow_all → 모든 작업 체크 → 저장.';

  @override
  String get setupSettingUpStorage => '스토리지 설정 중...';

  @override
  String get setupSetupStorage => '스토리지 설정';

  @override
  String get setupComplete => '설정 완료!';

  @override
  String get setupCompleteDescription => 'Artive가 Supabase 프로젝트에 연결되었습니다.\n\n작품 추가를 시작할 수 있습니다!';

  @override
  String get setupQuickTips => '빠른 팁';

  @override
  String get setupQuickTipsContent => '• +를 눌러 첫 번째 작품 추가\n• 다양한 태그로 여러 이미지 추가 (메인, 참조, 스캔)\n• 검색과 필터로 작품을 빠르게 찾기\n• 설정에서 언어 변경';

  @override
  String get setupStartUsing => 'Artive 사용 시작';

  @override
  String get openInBrowser => '브라우저에서 열기';

  @override
  String get couldNotOpenBrowser => '브라우저를 자동으로 열 수 없습니다. 이 URL을 복사하여 수동으로 열어주세요:';

  @override
  String get urlCopied => 'URL이 클립보드에 복사됨';

  @override
  String get backupRestore => '백업 및 복원';

  @override
  String get backupRestoreSubtitle => '데이터를 내보내거나 가져오기';

  @override
  String get createBackup => '백업 만들기';

  @override
  String get createBackupDescription => '모든 작품과 이미지를 저장하거나 공유할 수 있는 ZIP 파일로 내보냅니다.';

  @override
  String get restoreBackup => '백업 복원';

  @override
  String get restoreBackupDescription => '이전에 생성한 백업 파일에서 작품과 이미지를 가져옵니다.';

  @override
  String get restoreBackupConfirm => '백업을 어떻게 복원하시겠습니까?';

  @override
  String get restoreMerge => '기존 항목과 병합';

  @override
  String get restoreReplace => '모두 교체';

  @override
  String get backupCreated => '백업이 성공적으로 생성되었습니다';

  @override
  String restoreComplete(int count) {
    return '$count개의 작품이 복원되었습니다';
  }

  @override
  String get backupNote => '백업에는 모든 작품과 이미지 데이터가 포함됩니다. 안전하게 보관하세요!';

  @override
  String itemsSelected(int count) {
    return '$count개 선택됨';
  }

  @override
  String confirmDeleteMultiple(int count) {
    return '$count개의 작품을 삭제하시겠습니까?';
  }

  @override
  String artworksDeleted(int count) {
    return '$count개의 작품이 삭제되었습니다';
  }

  @override
  String get selectAll => '모두 선택';
}
