part of '../import/app_import.dart';

class AppLang {
  // يقوم بارجاع الغة المستخدمة
  static String currentLang(BuildContext context) =>
      context.locale.languageCode;
  static void setLang(BuildContext context, Locale locale) =>
      context.setLocale(locale);
}
