// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appTitle => 'Artive';

  @override
  String get artworks => 'ผลงาน';

  @override
  String get addArtwork => 'เพิ่มผลงาน';

  @override
  String get editArtwork => 'แก้ไขผลงาน';

  @override
  String get deleteArtwork => 'ลบผลงาน';

  @override
  String get name => 'ชื่อ';

  @override
  String get description => 'คำอธิบาย';

  @override
  String get descriptionOptional => 'คำอธิบาย (ไม่บังคับ)';

  @override
  String get date => 'สร้างเมื่อ';

  @override
  String get month => 'เดือน';

  @override
  String get year => 'ปี';

  @override
  String get dimension => 'ขนาด';

  @override
  String get dimensionHint => 'เช่น 50x70 ซม.';

  @override
  String get medium => 'เทคนิค';

  @override
  String get mediumHint => 'เช่น สีน้ำมันบนผ้าใบ';

  @override
  String get images => 'รูปภาพ';

  @override
  String get addImage => 'เพิ่มรูปภาพ';

  @override
  String get photo => 'หลัก';

  @override
  String get reference => 'ภาพอ้างอิง';

  @override
  String get scan => 'สแกน';

  @override
  String get save => 'บันทึก';

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get delete => 'ลบ';

  @override
  String get confirmDelete => 'คุณแน่ใจหรือไม่ที่จะลบผลงานนี้?';

  @override
  String get confirmDeleteImage => 'คุณแน่ใจหรือไม่ที่จะลบรูปภาพนี้?';

  @override
  String get yes => 'ใช่';

  @override
  String get no => 'ไม่';

  @override
  String get settings => 'การตั้งค่า';

  @override
  String get language => 'ภาษา';

  @override
  String get about => 'เกี่ยวกับ';

  @override
  String get version => 'เวอร์ชัน';

  @override
  String get search => 'ค้นหา';

  @override
  String get searchHint => 'ค้นหาแบบตรงทั้งหมด';

  @override
  String get noArtworks => 'ยังไม่มีผลงาน';

  @override
  String get noArtworksHint => 'แตะ + เพื่อเพิ่มผลงานชิ้นแรก';

  @override
  String get loading => 'กำลังโหลด...';

  @override
  String get error => 'ข้อผิดพลาด';

  @override
  String get retry => 'ลองอีกครั้ง';

  @override
  String get uploadingImage => 'กำลังอัปโหลดรูปภาพ...';

  @override
  String get imageUploaded => 'อัปโหลดรูปภาพแล้ว';

  @override
  String get imageFailed => 'อัปโหลดรูปภาพล้มเหลว';

  @override
  String get artworkSaved => 'บันทึกผลงานแล้ว';

  @override
  String get artworkDeleted => 'ลบผลงานแล้ว';

  @override
  String get requiredField => 'ฟิลด์นี้จำเป็น';

  @override
  String get invalidYear => 'กรุณาใส่ปีที่ถูกต้อง';

  @override
  String get invalidMonth => 'กรุณาใส่เดือนระหว่าง 1 ถึง 12';

  @override
  String get selectImageTag => 'เลือกประเภทรูปภาพ';

  @override
  String get gallery => 'แกลเลอรี';

  @override
  String get camera => 'กล้อง';

  @override
  String get selectSource => 'เลือกแหล่งที่มารูปภาพ';

  @override
  String get id => 'ID';

  @override
  String get createdAt => 'อัปโหลดเมื่อ';

  @override
  String get filterByMedium => 'กรองตามเทคนิค';

  @override
  String get filterByYear => 'กรองตามปี';

  @override
  String get allMedia => 'ทุกเทคนิค';

  @override
  String get allYears => 'ทุกปี';

  @override
  String get sortBy => 'เรียงตาม';

  @override
  String get sortByName => 'ชื่อ';

  @override
  String get sortByDate => 'วันที่';

  @override
  String get sortByCreated => 'วันที่สร้าง';

  @override
  String get ascending => 'น้อยไปมาก';

  @override
  String get descending => 'มากไปน้อย';

  @override
  String get back => 'กลับ';

  @override
  String get close => 'ปิด';

  @override
  String get copy => 'คัดลอก';

  @override
  String get skip => 'ข้าม';

  @override
  String get done => 'เสร็จสิ้น';

  @override
  String get reset => 'รีเซ็ต';

  @override
  String get cloudConnection => 'การเชื่อมต่อคลาวด์';

  @override
  String get cloudConnectionSubtitle => 'กำหนดค่าการเชื่อมต่อ Supabase ใหม่';

  @override
  String get resetCloudConnection => 'รีเซ็ตการเชื่อมต่อคลาวด์';

  @override
  String get resetCloudConnectionMessage => 'การดำเนินการนี้จะยกเลิกการเชื่อมต่อแอปจากโปรเจกต์ Supabase ของคุณ คุณจะต้องเรียกใช้ตัวช่วยการตั้งค่าอีกครั้ง\n\nข้อมูลของคุณใน Supabase จะไม่ถูกลบ';

  @override
  String get restartToReconfigure => 'กรุณารีสตาร์ทแอปเพื่อกำหนดค่าใหม่';

  @override
  String get databasePaused => 'ฐานข้อมูลถูกหยุดชั่วคราว';

  @override
  String get databasePausedMessage => 'โปรเจกต์ Supabase ของคุณถูกหยุดชั่วคราวเนื่องจากไม่มีการใช้งาน\n\nในการกู้คืน:\n1. ไปที่ supabase.com/dashboard\n2. เลือกโปรเจกต์ของคุณ\n3. คลิก \"กู้คืนโปรเจกต์\"\n\nใช้เวลาประมาณ 1 นาที';

  @override
  String get setupTitle => 'ตั้งค่า Artive';

  @override
  String get setupWelcome => 'ยินดีต้อนรับสู่ Artive!';

  @override
  String get setupWelcomeDescription => 'ตัวช่วยนี้จะช่วยคุณตั้งค่าที่เก็บข้อมูลคลาวด์สำหรับแคตตาล็อกผลงานศิลปะของคุณ\n\nผลงานและรูปภาพของคุณจะถูกจัดเก็บอย่างปลอดภัยใน Supabase แพลตฟอร์มคลาวด์ฟรี\n\nการตั้งค่าใช้เวลาประมาณ 5 นาที';

  @override
  String get setupWhatIsSupabase => 'Supabase คืออะไร?';

  @override
  String get setupWhatIsSupabaseContent => 'Supabase เป็นบริการแบ็กเอนด์ฟรีและโอเพนซอร์ส มีฐานข้อมูลและที่เก็บไฟล์สำหรับแอปของคุณ';

  @override
  String get setupYourData => 'ข้อมูลของคุณ การควบคุมของคุณ';

  @override
  String get setupYourDataContent => 'คุณสร้างบัญชี Supabase ของคุณเอง ข้อมูลเป็นของคุณและมีเพียงคุณเท่านั้นที่เข้าถึงได้';

  @override
  String get setupGetStarted => 'เริ่มต้น';

  @override
  String get setupStep1Title => 'ขั้นตอนที่ 1: สร้างโปรเจกต์ Supabase';

  @override
  String get setupStep1_1 => 'ไปที่ supabase.com และสร้างบัญชีฟรี';

  @override
  String get setupOpenSupabase => 'เปิด Supabase';

  @override
  String get setupStep1_2 => 'คลิก \"โปรเจกต์ใหม่\" ในแดชบอร์ด';

  @override
  String get setupStep1_3 => 'เลือกชื่อสำหรับโปรเจกต์ของคุณ (เช่น \"Artive\")';

  @override
  String get setupStep1_4 => 'ตั้งรหัสผ่านฐานข้อมูลที่ปลอดภัย (บันทึกไว้!)';

  @override
  String get setupStep1_5 => 'เลือกภูมิภาคใกล้คุณ';

  @override
  String get setupStep1_6 => 'คลิก \"สร้างโปรเจกต์ใหม่\" และรอ';

  @override
  String get setupFreeTier => 'แพ็กเกจฟรี';

  @override
  String get setupFreeTierContent => 'แพ็กเกจฟรีของ Supabase รวมฐานข้อมูล 500MB และที่เก็บไฟล์ 1GB - เพียงพอสำหรับผลงานนับพัน!';

  @override
  String get setupProjectCreated => 'สร้างโปรเจกต์แล้ว';

  @override
  String get setupStep2Title => 'ขั้นตอนที่ 2: รับข้อมูลรับรอง';

  @override
  String get setupStep2_1 => 'ในโปรเจกต์ Supabase ไปที่ \"การตั้งค่าโปรเจกต์\" (ไอคอนเฟือง)';

  @override
  String get setupStep2_2 => 'คลิก \"Data API\" ในเมนูการตั้งค่า';

  @override
  String get setupStep2_3 => 'หา \"Project URL\" - ดูเหมือน: https://xxxxx.supabase.co';

  @override
  String get setupStep2_4 => 'หาคีย์ \"anon\" ภายใต้ \"Project API keys\"';

  @override
  String get setupAboutApiKeys => 'เกี่ยวกับคีย์ API';

  @override
  String get setupAboutApiKeysContent => 'คีย์ anon ปลอดภัยสำหรับแอป ทำงานร่วมกับนโยบาย Row Level Security';

  @override
  String get setupCredentialsTip => 'เคล็ดลับ: คุณสามารถคลิกปุ่มคัดลอกข้างแต่ละค่าใน Supabase';

  @override
  String get setupIHaveCredentials => 'ฉันมีข้อมูลรับรองแล้ว';

  @override
  String get setupStep3Title => 'ขั้นตอนที่ 3: ป้อนข้อมูลรับรอง';

  @override
  String get setupProjectUrl => 'URL โปรเจกต์';

  @override
  String get setupAnonKey => 'คีย์ Anon';

  @override
  String get setupValidateAndContinue => 'ตรวจสอบและดำเนินการต่อ';

  @override
  String get setupStep4Title => 'ขั้นตอนที่ 4: ตั้งค่าฐานข้อมูล';

  @override
  String get setupManualSetupRequired => 'ต้องตั้งค่าด้วยตนเอง';

  @override
  String get setupDatabaseManualContent => 'ต้องสร้างตารางฐานข้อมูลด้วยตนเอง นี่เป็นการตั้งค่าครั้งเดียว';

  @override
  String get setupStep4_1 => 'ใน Supabase ไปที่ \"SQL Editor\" ในแถบด้านข้าง';

  @override
  String get setupStep4_2 => 'คลิก \"คิวรีใหม่\"';

  @override
  String get setupStep4_3 => 'คัดลอกและวาง SQL ต่อไปนี้:';

  @override
  String get setupStep4_4 => 'คลิก \"รัน\" เพื่อดำเนินการคิวรี';

  @override
  String get setupStep4_5 => 'คุณควรเห็น \"สำเร็จ ไม่มีแถวที่ส่งกลับ\"';

  @override
  String get setupSqlCopied => 'คัดลอก SQL ไปยังคลิปบอร์ดแล้ว';

  @override
  String get setupCheckingDatabase => 'กำลังตรวจสอบฐานข้อมูล...';

  @override
  String get setupIveRunSql => 'ฉันรัน SQL แล้ว';

  @override
  String get setupCheckDatabase => 'ตรวจสอบฐานข้อมูล';

  @override
  String get setupStep5Title => 'ขั้นตอนที่ 5: ตั้งค่าที่เก็บข้อมูล';

  @override
  String get setupStorageManualContent => 'สร้างบัคเก็ตที่เก็บข้อมูลสำหรับรูปภาพผลงานของคุณ';

  @override
  String get setupStep5_1 => 'ใน Supabase ไปที่ \"Storage\" ในแถบด้านข้าง';

  @override
  String get setupStep5_2 => 'คลิก \"บัคเก็ตใหม่\"';

  @override
  String get setupStep5_3 => 'ตั้งชื่อให้ถูกต้อง: artworks';

  @override
  String get setupStep5_4 => 'ปิด \"บัคเก็ตสาธารณะ\" ไว้ (แนะนำ)';

  @override
  String get setupStep5_5 => 'คลิก \"สร้างบัคเก็ต\"';

  @override
  String get setupAddStoragePolicy => 'เพิ่มนโยบายที่เก็บข้อมูล';

  @override
  String get setupAddStoragePolicyContent => 'คลิกบัคเก็ต → นโยบาย → นโยบายใหม่ → \"สำหรับการปรับแต่งเต็มรูปแบบ\" → ชื่อ: allow_all → เลือกทุกการดำเนินการ → บันทึก';

  @override
  String get setupSettingUpStorage => 'กำลังตั้งค่าที่เก็บข้อมูล...';

  @override
  String get setupSetupStorage => 'ตั้งค่าที่เก็บข้อมูล';

  @override
  String get setupComplete => 'ตั้งค่าเสร็จสิ้น!';

  @override
  String get setupCompleteDescription => 'Artive เชื่อมต่อกับโปรเจกต์ Supabase ของคุณแล้ว\n\nคุณสามารถเริ่มเพิ่มผลงานได้!';

  @override
  String get setupQuickTips => 'เคล็ดลับด่วน';

  @override
  String get setupQuickTipsContent => '• แตะ + เพื่อเพิ่มผลงานชิ้นแรก\n• เพิ่มรูปภาพหลายรูปพร้อมแท็กต่างๆ (หลัก, อ้างอิง, สแกน)\n• ใช้การค้นหาและตัวกรองเพื่อค้นหาผลงานอย่างรวดเร็ว\n• เปลี่ยนภาษาในการตั้งค่า';

  @override
  String get setupStartUsing => 'เริ่มใช้ Artive';

  @override
  String get openInBrowser => 'เปิดในเบราว์เซอร์';

  @override
  String get couldNotOpenBrowser => 'ไม่สามารถเปิดเบราว์เซอร์โดยอัตโนมัติ กรุณาคัดลอก URL นี้และเปิดด้วยตนเอง:';

  @override
  String get urlCopied => 'คัดลอก URL ไปยังคลิปบอร์ดแล้ว';

  @override
  String get backupRestore => 'สำรองข้อมูลและกู้คืน';

  @override
  String get backupRestoreSubtitle => 'ส่งออกหรือนำเข้าข้อมูลของคุณ';

  @override
  String get createBackup => 'สร้างข้อมูลสำรอง';

  @override
  String get createBackupDescription => 'ส่งออกผลงานศิลปะและภาพทั้งหมดของคุณเป็นไฟล์ ZIP ที่คุณสามารถบันทึกหรือแชร์ได้';

  @override
  String get restoreBackup => 'กู้คืนข้อมูลสำรอง';

  @override
  String get restoreBackupDescription => 'นำเข้าผลงานศิลปะและภาพจากไฟล์สำรองที่สร้างไว้ก่อนหน้านี้';

  @override
  String get restoreBackupConfirm => 'คุณต้องการกู้คืนข้อมูลสำรองอย่างไร?';

  @override
  String get restoreMerge => 'ผสานกับข้อมูลที่มีอยู่';

  @override
  String get restoreReplace => 'แทนที่ทั้งหมด';

  @override
  String get backupCreated => 'สร้างข้อมูลสำรองสำเร็จ';

  @override
  String restoreComplete(int count) {
    return 'กู้คืนผลงาน $count ชิ้น';
  }

  @override
  String get backupNote => 'ข้อมูลสำรองรวมถึงข้อมูลผลงานและภาพทั้งหมด เก็บไว้อย่างปลอดภัย!';

  @override
  String itemsSelected(int count) {
    return 'เลือก $count รายการ';
  }

  @override
  String confirmDeleteMultiple(int count) {
    return 'ลบผลงาน $count ชิ้น?';
  }

  @override
  String artworksDeleted(int count) {
    return 'ลบผลงาน $count ชิ้นแล้ว';
  }

  @override
  String get selectAll => 'เลือกทั้งหมด';
}
