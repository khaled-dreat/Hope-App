part of '../import/app_import.dart';

class AppThemeChooes {
  static ThemeData ligh(BuildContext context) {
    return ThemeData.light().copyWith(
        // Card
        cardTheme: CardTheme(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      clipBehavior: Clip.antiAlias,
    ));
  }
}
