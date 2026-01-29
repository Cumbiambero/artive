import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleProvider extends ChangeNotifier {
  static const String _localeKey = 'app_locale';
  Locale? _locale;

  Locale? get locale => _locale;

  static const supportedLocales = [
    Locale('en'),
    Locale('es'),
    Locale('zh'),
    Locale('hi'),
    Locale('fr'),
    Locale('ar'),
    Locale('bn'),
    Locale('pt'),
    Locale('ru'),
    Locale('ja'),
    Locale('de'),
    Locale('ko'),
    Locale('vi'),
    Locale('tr'),
    Locale('it'),
    Locale('th'),
    Locale('pl'),
    Locale('nl'),
    Locale('id'),
  ];

  static const localeNames = {
    'en': 'English',
    'es': 'Español',
    'zh': '中文',
    'hi': 'हिन्दी',
    'fr': 'Français',
    'ar': 'العربية',
    'bn': 'বাংলা',
    'pt': 'Português',
    'ru': 'Русский',
    'ja': '日本語',
    'de': 'Deutsch',
    'ko': '한국어',
    'vi': 'Tiếng Việt',
    'tr': 'Türkçe',
    'it': 'Italiano',
    'th': 'ไทย',
    'pl': 'Polski',
    'nl': 'Nederlands',
    'id': 'Bahasa Indonesia',
  };

  Future<void> loadLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final localeCode = prefs.getString(_localeKey);
    if (localeCode != null) {
      _locale = Locale(localeCode);
    } else {
      final systemLocale = ui.PlatformDispatcher.instance.locale;
      final isSupported = supportedLocales.any((l) => l.languageCode == systemLocale.languageCode);
      _locale = isSupported ? Locale(systemLocale.languageCode) : const Locale('en');
    }
    notifyListeners();
  }

  Future<void> setLocale(Locale locale) async {
    _locale = locale;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_localeKey, locale.languageCode);
    notifyListeners();
  }

  String getLocaleName(String code) => localeNames[code] ?? code;
}
