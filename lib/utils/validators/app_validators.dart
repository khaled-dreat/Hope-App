part of "../import/app_import.dart";

class AppValidators {
  // * message Error
  static final String messageEnterValue = ApplangKey.enterValue.tr();
  static final String messageCorrectEmail = ApplangKey.errorEmail.tr();
  static final String messageCorrectPass = ApplangKey.errorPass.tr();
  static final String messageConfirmPass = ApplangKey.errorConfirmPass.tr();

  static String? checkEmail(String? value) => templateValidators(
      value, !validators.isEmail(value ?? ""), messageCorrectEmail);
  static String? checkPass(String? value) => templateValidators(
      value, !validators.isLength(value ?? "", 6, 12), messageCorrectPass);
  static String? checkConfirmPass(String? value, String? pass) =>
      templateValidators(
          value, !validators.equals(value?.trim(), pass), messageConfirmPass);

  static String? templateValidators(
      String? value, bool condition, String errorMsg) {
    if (value?.isEmpty ?? true) {
      return messageEnterValue;
    } else if (condition) {
      return errorMsg;
    }
    return null;
  }
}
