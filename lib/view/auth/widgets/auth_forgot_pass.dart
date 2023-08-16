part of "../../../utils/import/app_import.dart";

class AuthForgotPass extends StatelessWidget {
  const AuthForgotPass({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.centerEnd,
      child: TextButton(
          onPressed: () {
            AppRoute.go(context, PageForgotPass.nameRoute);
          },
          child: Text(
            ApplangKey.forgotPass.tr(),
            style: TextStyle(decoration: TextDecoration.underline),
          )),
    );
  }
}
