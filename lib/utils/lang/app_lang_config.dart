part of "../import/app_import.dart";

String kEn = "en";
String kAr = "ar";

class AppLangConfig {
  static String path = 'assets/lang';

  static Locale localeAr = const Locale('ar');
  static Locale localeEn = const Locale('en');

  static List<Locale> supportedLocales = [localeAr, localeEn];
}
