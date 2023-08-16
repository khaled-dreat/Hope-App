part of '../../utils/import/app_import.dart';

class PageRegister extends StatelessWidget {
  const PageRegister({super.key});
  static String nameRoute = "PageRegister";
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
                    // spase
                    AppDime.lg.verticalSpace,
                    // Email
                    AuthFieldEmail(),
                    AppDime.lg.verticalSpace,
                    // Pass
                    AuthFieldPass(),
                    // spase
                    AppDime.lg.verticalSpace,
                    // confirm Pass
                    AuthFieldPass(isconfirm: true),
                    // Forgot Pass
                    AppDime.lg.verticalSpace,
                    // Button Sign In
                    pAuth.loading
                        ? AppLoading(
                            loading: LoadingType.page,
                          )
                        : CustomBtn(
                            title: ApplangKey.register.tr(),
                            onTap: () async {
                              if (keyForm.currentState?.validate() ?? false) {
                                keyForm.currentState?.save();
                                if (await pAuth.authMethod(isSignIn: false) !=
                                    null) {
                                  AppRoute.go(context, HomePage.nameRoute);
                                } else {
                                  div.log(pAuth.errorMessage);
                                  AppToast.toast(pAuth.errorMessage);
                                }
                              }
                            },
                          )
                    // Footer

                    ,
                    AuthFooter(
                      first: ApplangKey.haveAccount,
                      second: ApplangKey.login,
                      onTap: () => AppRoute.goBack(context),
                    )
                  ]),
            ),
          ),
        ),
      ),
    );
  }
}
