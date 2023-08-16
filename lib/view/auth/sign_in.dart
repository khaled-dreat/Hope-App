part of '../../utils/import/app_import.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});
  static String nameRoute = "SignInPage";
  static GlobalKey<FormState> keyForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    ControllerAuth pAuth = Provider.of<ControllerAuth>(context);
    return Scaffold(
      appBar: AppBarHome(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            //  color: Colors.amber,
            margin: EdgeInsets.symmetric(horizontal: AppDime.md.r),
            child: Form(
              key: keyForm,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppDime.lg.verticalSpace,
                    // Logo
                    Image(
                      image: AssetImage(
                        AppImage.hopeLogo,
                      ),
                      width: AppDime.half.sw,
                    ),
                    AppDime.lg.verticalSpace,
                    // Email
                    AuthFieldEmail(),
                    AppDime.lg.verticalSpace,
                    // Pass
                    AuthFieldPass()

                    // Forgot Pass
                    ,
                    AuthForgotPass(),

                    // Button Sign In
                    pAuth.loading
                        ? AppLoading(
                            loading: LoadingType.profile,
                          )
                        : CustomBtn(
                            title: ApplangKey.login.tr(),
                            onTap: () async {
                              if (keyForm.currentState?.validate() ?? false) {
                                keyForm.currentState?.save();
                                if (await pAuth.authMethod() != null) {
                                  AppRoute.go(context, HomePage.nameRoute);
                                } else {
                                  print("object");

                                  AppToast.toast(pAuth.errorMessage);
                                }
                              }
                            },
                          )
                    // Footer

                    ,
                    AuthFooter(
                      first: ApplangKey.notAccount,
                      second: ApplangKey.register,
                      onTap: () => AppRoute.go(context, PageRegister.nameRoute),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
