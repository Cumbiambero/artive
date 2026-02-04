// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'Artive';

  @override
  String get artworks => 'Tác phẩm';

  @override
  String get addArtwork => 'Thêm tác phẩm';

  @override
  String get editArtwork => 'Sửa tác phẩm';

  @override
  String get deleteArtwork => 'Xóa tác phẩm';

  @override
  String get name => 'Tên';

  @override
  String get description => 'Mô tả';

  @override
  String get descriptionOptional => 'Mô tả (tùy chọn)';

  @override
  String get date => 'Tạo lúc';

  @override
  String get month => 'Tháng';

  @override
  String get year => 'Năm';

  @override
  String get dimension => 'Kích thước';

  @override
  String get dimensionHint => 'vd: 50x70 cm';

  @override
  String get medium => 'Chất liệu';

  @override
  String get mediumHint => 'vd: Sơn dầu trên canvas';

  @override
  String get images => 'Hình ảnh';

  @override
  String get addImage => 'Thêm hình ảnh';

  @override
  String get photo => 'Chính';

  @override
  String get reference => 'Ảnh tham khảo';

  @override
  String get scan => 'Quét';

  @override
  String get save => 'Lưu';

  @override
  String get cancel => 'Hủy';

  @override
  String get delete => 'Xóa';

  @override
  String get confirmDelete => 'Bạn có chắc muốn xóa tác phẩm này?';

  @override
  String get confirmDeleteImage => 'Bạn có chắc muốn xóa hình ảnh này?';

  @override
  String get yes => 'Có';

  @override
  String get no => 'Không';

  @override
  String get settings => 'Cài đặt';

  @override
  String get language => 'Ngôn ngữ';

  @override
  String get about => 'Giới thiệu';

  @override
  String get version => 'Phiên bản';

  @override
  String get search => 'Tìm kiếm';

  @override
  String get searchHint => 'Tìm kiếm chính xác';

  @override
  String get noArtworks => 'Chưa có tác phẩm nào';

  @override
  String get noArtworksHint => 'Nhấn + để thêm tác phẩm đầu tiên';

  @override
  String get loading => 'Đang tải...';

  @override
  String get error => 'Lỗi';

  @override
  String get retry => 'Thử lại';

  @override
  String get uploadingImage => 'Đang tải lên hình ảnh...';

  @override
  String get imageUploaded => 'Hình ảnh đã tải lên';

  @override
  String get imageFailed => 'Tải hình ảnh thất bại';

  @override
  String get artworkSaved => 'Đã lưu tác phẩm';

  @override
  String get artworkDeleted => 'Đã xóa tác phẩm';

  @override
  String get requiredField => 'Trường này là bắt buộc';

  @override
  String get invalidYear => 'Vui lòng nhập năm hợp lệ';

  @override
  String get invalidMonth => 'Vui lòng nhập tháng từ 1 đến 12';

  @override
  String get selectImageTag => 'Chọn loại hình ảnh';

  @override
  String get gallery => 'Thư viện';

  @override
  String get camera => 'Máy ảnh';

  @override
  String get selectSource => 'Chọn nguồn hình ảnh';

  @override
  String get id => 'ID';

  @override
  String get createdAt => 'Tải lên lúc';

  @override
  String get filterByMedium => 'Lọc theo chất liệu';

  @override
  String get filterByYear => 'Lọc theo năm';

  @override
  String get allMedia => 'Tất cả chất liệu';

  @override
  String get allYears => 'Tất cả các năm';

  @override
  String get sortBy => 'Sắp xếp theo';

  @override
  String get sortByName => 'Tên';

  @override
  String get sortByDate => 'Ngày';

  @override
  String get sortByCreated => 'Ngày tạo';

  @override
  String get ascending => 'Tăng dần';

  @override
  String get descending => 'Giảm dần';

  @override
  String get back => 'Quay lại';

  @override
  String get close => 'Đóng';

  @override
  String get copy => 'Sao chép';

  @override
  String get skip => 'Bỏ qua';

  @override
  String get done => 'Xong';

  @override
  String get reset => 'Đặt lại';

  @override
  String get cloudConnection => 'Kết nối đám mây';

  @override
  String get cloudConnectionSubtitle => 'Cấu hình lại kết nối Supabase';

  @override
  String get resetCloudConnection => 'Đặt lại kết nối đám mây';

  @override
  String get resetCloudConnectionMessage => 'Điều này sẽ ngắt kết nối ứng dụng khỏi dự án Supabase của bạn. Bạn sẽ cần chạy lại trình hướng dẫn cài đặt.\n\nDữ liệu của bạn trong Supabase sẽ KHÔNG bị xóa.';

  @override
  String get restartToReconfigure => 'Vui lòng khởi động lại ứng dụng để cấu hình lại';

  @override
  String get databasePaused => 'Cơ sở dữ liệu đã tạm dừng';

  @override
  String get databasePausedMessage => 'Dự án Supabase của bạn đã bị tạm dừng do không hoạt động.\n\nĐể khôi phục:\n1. Truy cập supabase.com/dashboard\n2. Chọn dự án của bạn\n3. Nhấp \"Khôi phục dự án\"\n\nQuá trình này mất khoảng 1 phút.';

  @override
  String get setupTitle => 'Cài đặt Artive';

  @override
  String get setupWelcome => 'Chào mừng đến với Artive!';

  @override
  String get setupWelcomeDescription => 'Trình hướng dẫn này sẽ giúp bạn thiết lập lưu trữ đám mây cho danh mục tác phẩm nghệ thuật.\n\nTác phẩm và hình ảnh của bạn sẽ được lưu trữ an toàn trong Supabase, một nền tảng đám mây miễn phí.\n\nCài đặt mất khoảng 5 phút.';

  @override
  String get setupWhatIsSupabase => 'Supabase là gì?';

  @override
  String get setupWhatIsSupabaseContent => 'Supabase là dịch vụ backend miễn phí, mã nguồn mở. Nó cung cấp cơ sở dữ liệu và lưu trữ tệp cho ứng dụng của bạn.';

  @override
  String get setupYourData => 'Dữ liệu của bạn, quyền kiểm soát của bạn';

  @override
  String get setupYourDataContent => 'Bạn tạo tài khoản Supabase của riêng mình. Dữ liệu thuộc về bạn và chỉ bạn có quyền truy cập.';

  @override
  String get setupGetStarted => 'Bắt đầu';

  @override
  String get setupStep1Title => 'Bước 1: Tạo dự án Supabase';

  @override
  String get setupStep1_1 => 'Truy cập supabase.com và tạo tài khoản miễn phí';

  @override
  String get setupOpenSupabase => 'Mở Supabase';

  @override
  String get setupStep1_2 => 'Nhấp \"Dự án mới\" trong bảng điều khiển';

  @override
  String get setupStep1_3 => 'Chọn tên cho dự án (ví dụ: \"Artive\")';

  @override
  String get setupStep1_4 => 'Đặt mật khẩu cơ sở dữ liệu an toàn (lưu lại!)';

  @override
  String get setupStep1_5 => 'Chọn khu vực gần bạn';

  @override
  String get setupStep1_6 => 'Nhấp \"Tạo dự án mới\" và đợi';

  @override
  String get setupFreeTier => 'Gói miễn phí';

  @override
  String get setupFreeTierContent => 'Gói miễn phí Supabase bao gồm 500MB cơ sở dữ liệu và 1GB lưu trữ tệp - đủ cho hàng nghìn tác phẩm!';

  @override
  String get setupProjectCreated => 'Đã tạo dự án';

  @override
  String get setupStep2Title => 'Bước 2: Lấy thông tin xác thực';

  @override
  String get setupStep2_1 => 'Trong dự án Supabase, vào \"Cài đặt dự án\" (biểu tượng bánh răng)';

  @override
  String get setupStep2_2 => 'Nhấp \"Data API\" trong menu cài đặt';

  @override
  String get setupStep2_3 => 'Tìm \"Project URL\" - có dạng: https://xxxxx.supabase.co';

  @override
  String get setupStep2_4 => 'Tìm khóa \"anon\" trong \"Project API keys\"';

  @override
  String get setupAboutApiKeys => 'Về khóa API';

  @override
  String get setupAboutApiKeysContent => 'Khóa anon an toàn cho ứng dụng. Nó hoạt động với chính sách Row Level Security.';

  @override
  String get setupCredentialsTip => 'Mẹo: Bạn có thể nhấp nút sao chép bên cạnh mỗi giá trị trong Supabase.';

  @override
  String get setupIHaveCredentials => 'Tôi có thông tin xác thực';

  @override
  String get setupStep3Title => 'Bước 3: Nhập thông tin xác thực';

  @override
  String get setupProjectUrl => 'URL dự án';

  @override
  String get setupAnonKey => 'Khóa Anon';

  @override
  String get setupValidateAndContinue => 'Xác thực và tiếp tục';

  @override
  String get setupStep4Title => 'Bước 4: Cài đặt cơ sở dữ liệu';

  @override
  String get setupManualSetupRequired => 'Cần cài đặt thủ công';

  @override
  String get setupDatabaseManualContent => 'Các bảng cơ sở dữ liệu cần được tạo thủ công. Đây là cài đặt một lần.';

  @override
  String get setupStep4_1 => 'Trong Supabase, vào \"SQL Editor\" ở thanh bên';

  @override
  String get setupStep4_2 => 'Nhấp \"Truy vấn mới\"';

  @override
  String get setupStep4_3 => 'Sao chép và dán SQL sau:';

  @override
  String get setupStep4_4 => 'Nhấp \"Chạy\" để thực thi truy vấn';

  @override
  String get setupStep4_5 => 'Bạn sẽ thấy \"Thành công. Không có hàng nào được trả về\"';

  @override
  String get setupSqlCopied => 'Đã sao chép SQL vào clipboard';

  @override
  String get setupCheckingDatabase => 'Đang kiểm tra cơ sở dữ liệu...';

  @override
  String get setupIveRunSql => 'Tôi đã chạy SQL';

  @override
  String get setupCheckDatabase => 'Kiểm tra cơ sở dữ liệu';

  @override
  String get setupStep5Title => 'Bước 5: Cài đặt lưu trữ';

  @override
  String get setupStorageManualContent => 'Tạo bucket lưu trữ cho hình ảnh tác phẩm.';

  @override
  String get setupStep5_1 => 'Trong Supabase, vào \"Storage\" ở thanh bên';

  @override
  String get setupStep5_2 => 'Nhấp \"Bucket mới\"';

  @override
  String get setupStep5_3 => 'Đặt tên chính xác: artworks';

  @override
  String get setupStep5_4 => 'Để \"Bucket công khai\" TẮT (khuyến nghị)';

  @override
  String get setupStep5_5 => 'Nhấp \"Tạo bucket\"';

  @override
  String get setupAddStoragePolicy => 'Thêm chính sách lưu trữ';

  @override
  String get setupAddStoragePolicyContent => 'Nhấp bucket → Chính sách → Chính sách mới → \"Để tùy chỉnh đầy đủ\" → Tên: allow_all → Chọn tất cả thao tác → Lưu.';

  @override
  String get setupSettingUpStorage => 'Đang cài đặt lưu trữ...';

  @override
  String get setupSetupStorage => 'Cài đặt lưu trữ';

  @override
  String get setupComplete => 'Cài đặt hoàn tất!';

  @override
  String get setupCompleteDescription => 'Artive đã được kết nối với dự án Supabase của bạn.\n\nBạn có thể bắt đầu thêm tác phẩm!';

  @override
  String get setupQuickTips => 'Mẹo nhanh';

  @override
  String get setupQuickTipsContent => '• Nhấn + để thêm tác phẩm đầu tiên\n• Thêm nhiều hình ảnh với các thẻ khác nhau (chính, tham khảo, quét)\n• Sử dụng tìm kiếm và bộ lọc để tìm tác phẩm nhanh chóng\n• Thay đổi ngôn ngữ trong Cài đặt';

  @override
  String get setupStartUsing => 'Bắt đầu sử dụng Artive';

  @override
  String get openInBrowser => 'Mở trong trình duyệt';

  @override
  String get couldNotOpenBrowser => 'Không thể tự động mở trình duyệt. Vui lòng sao chép URL này và mở thủ công:';

  @override
  String get urlCopied => 'Đã sao chép URL vào clipboard';

  @override
  String get backupRestore => 'Sao lưu và khôi phục';

  @override
  String get backupRestoreSubtitle => 'Xuất hoặc nhập dữ liệu của bạn';

  @override
  String get createBackup => 'Tạo bản sao lưu';

  @override
  String get createBackupDescription => 'Xuất tất cả tác phẩm và hình ảnh của bạn thành tệp ZIP để lưu hoặc chia sẻ.';

  @override
  String get restoreBackup => 'Khôi phục bản sao lưu';

  @override
  String get restoreBackupDescription => 'Nhập tác phẩm và hình ảnh từ tệp sao lưu đã tạo trước đó.';

  @override
  String get restoreBackupConfirm => 'Bạn muốn khôi phục bản sao lưu như thế nào?';

  @override
  String get restoreMerge => 'Gộp với dữ liệu hiện tại';

  @override
  String get restoreReplace => 'Thay thế tất cả';

  @override
  String get backupCreated => 'Tạo bản sao lưu thành công';

  @override
  String restoreComplete(int count) {
    return 'Đã khôi phục $count tác phẩm';
  }

  @override
  String get backupNote => 'Bản sao lưu bao gồm tất cả dữ liệu tác phẩm và hình ảnh. Hãy lưu trữ chúng một cách an toàn!';

  @override
  String itemsSelected(int count) {
    return 'Đã chọn $count';
  }

  @override
  String confirmDeleteMultiple(int count) {
    return 'Xóa $count tác phẩm?';
  }

  @override
  String artworksDeleted(int count) {
    return 'Đã xóa $count tác phẩm';
  }

  @override
  String get selectAll => 'Chọn tất cả';
}
