part of '../../utils/import/app_import.dart';

class PageForgotPass extends StatelessWidget {
  const PageForgotPass({super.key});
  static String nameRoute = "PageForgotPass";
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
                    //space
                    AppDime.lg.verticalSpace,
                    // Logo
                    Image(
                      image: AssetImage(
                        AppImage.hopeLogo,
                      ),
                      width: AppDime.half.sw,
                    ),
                    //space
                    AppDime.lg.verticalSpace,
                    // Hint Reset Pass
                    Text(
                      ApplangKey.hintResetPass.tr(),
                      textAlign: TextAlign.center,
                      style: AppTheme.s1(context)?.copyWith(height: 1.5),
                    ),
                    //space
                    AppDime.lg.verticalSpace,
                    // Email
                    AuthFieldEmail(),
                    //space
                    AppDime.lg.verticalSpace,
                    // Button Sign In
                    pAuth.loading
                        ? AppLoading(
                            loading: LoadingType.page,
                          )
                        : CustomBtn(
                            title: ApplangKey.send.tr(),
                            onTap: () async {
                              if (keyForm.currentState?.validate() ?? false) {
                                keyForm.currentState?.save();
                                pAuth.resetPass();
                                AppRoute.goBack(context);
                              }
                            },
                          ),
                    //space
                    AppDime.lg.verticalSpace,
                    // Footer
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
