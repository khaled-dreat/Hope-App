part of "../utils/import/app_import.dart";

enum ChoiceLang {
  en(ApplangKey.english),
  ar(ApplangKey.arabic);

  final String nameLang;
  const ChoiceLang(this.nameLang);
}

class ControllerLang extends ChangeNotifier {
  ChoiceLang? lang;

  checkLang(BuildContext context) {
    lang = AppLang.currentLang(context) == kEn ? ChoiceLang.en : ChoiceLang.ar;
    notifyListeners();
  }

  changeLang(BuildContext context, ChoiceLang lang) {
    if (lang != this.lang) {
      this.lang = lang;
      context.setLocale(lang == ChoiceLang.en
          ? AppLangConfig.localeEn
          : AppLangConfig.localeAr);
      AppRestart.reBuild(context);
    } else {
      AppToast.toast(ApplangKey.chosenLang.tr());
    }
  }
}
