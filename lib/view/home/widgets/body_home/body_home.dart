part of '../../../../utils/import/app_import.dart';

class BodyHome extends StatelessWidget {
  const BodyHome({super.key});
// todo : languge
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            20.verticalSpace,
            Text(
              ApplangKey.welcomPageHome.tr(),
              //     textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.sp),
            ),
            Text(
              ApplangKey.welcomPageHomeSuptitle.tr(),
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.sp),
            ),
            20.verticalSpace,
            SizedBox(
              width: 320.w,
              height: 340.h,
              // color: Colors.amber,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  // Top

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      //Card X
                      CardDesign(
                        color: Colors.redAccent.shade200,
                        typeOFCard: bodyCardX(context),
                        onTap: () {
                          AppRoute.go(context, PageFamily.nameRoute);
                        },
                      ),
                      // Card Y
                      CardDesign(
                        color: Colors.blueAccent.shade400,
                        typeOFCard: bodyCardY(context),
                        onTap: () {
                          AppRoute.go(context, ResidentPage.nameRoute);
                        },
                      )
                    ],
                  ),

                  // Bottun
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // Card A
                      CardDesign(
                        color: Colors.green.shade400,
                        typeOFCard: bodyCardA(context),
                        onTap: () {
                          AppRoute.go(context, ProfilePage.nameRoute);
                        },
                      ),
                      // Card B
                      CardDesign(
                        color: Colors.orange.shade300,
                        typeOFCard: bodyCardB(context),
                      )
                    ],
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.r),
              //  color: Colors.amber,
              width: 320.w,
              height: 50.h,
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                SizedBox(
                  width: 100.w,
                  child: Divider(
                    endIndent: 10,
                    thickness: 2.5.h,
                  ),
                ),
                Text(
                  ApplangKey.statistics.tr(),
                  style: TextStyle(fontSize: 20.sp),
                ),
                SizedBox(
                  width: 100.w,
                  child: Divider(
                    indent: 10,
                    thickness: 2.5.h,
                  ),
                ),
              ]),
            ),
            const Counting()
          ],
        ),
      ),
    );
  }
}
