part of '../../../utils/import/app_import.dart';

class FamilyProfile extends StatelessWidget {
  const FamilyProfile({super.key});
  static String nameRoute = "FamilyProfile";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarHome(),
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.,
          children: [
            SizedBox(
              //color: Colors.amber,
              height: 200.h,
              width: MediaQuery.of(context).size.width,
              child: Column(children: [
                Image(
                  image: AssetImage(
                    AppImage.hopeLogo,
                  ),
                  width: 140.w,
                  height: 140.h,
                ),
                15.verticalSpace,
                Text(
                  ApplangKey.abdAlghani..tr(),
                  style: TextStyle(
                    fontSize: 25.sp,
                  ),
                )
              ]),
            ),
            20.verticalSpace,
            SizedBox(
              width: AppLang.currentLang(context) == kAr ? 190.h : 250.r,
              height: 45.h,
              child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)),
                  color: Colors.indigo.shade400,
                  onPressed: () {
                    AppRoute.go(context, InvoisePage.nameRoute);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SvgPicture.asset(
                        AppIcons.invoice,
                        height: 30,
                      ),
                      Text(
                        ApplangKey.titleButtonFamilyInvoices.tr(),
                        style: TextStyle(fontSize: 17.sp, color: Colors.white),
                      )
                    ],
                  )),
            ),
            10.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FamilyProfileDesginCard(
                  color: Colors.redAccent.shade200,
                  description: "+972592233139",
                  icon: Icons.call,
                  title: ApplangKey.numPhone.tr(),
                ),
                FamilyProfileDesginCard(
                  color: Colors.blueAccent.shade400,
                  description: "aydd88",
                  icon: Icons.account_circle,
                  title: ApplangKey.userName.tr(),
                )
              ],
            ),
            15.verticalSpace,
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FamilyProfileDesginCard(
                  color: Colors.green.shade400,
                  description: ApplangKey.addressAbdAlghani.tr(),
                  icon: Icons.location_on,
                  title: ApplangKey.address.tr(),
                ),
                FamilyProfileDesginCard(
                  color: Colors.orange.shade300,
                  description: "ayad.1234@gmail.com",
                  icon: Icons.email,
                  title: ApplangKey.email.tr(),
                ),
              ],
            )
          ]),
    );
  }
}
