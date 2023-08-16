part of '../../../../../utils/import/app_import.dart';

class DrawerHeder extends StatelessWidget {
  const DrawerHeder({super.key});
// todo : langoeg
// todo : inkol
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      child: Row(children: [
        8.horizontalSpace,
        const Expanded(child: ImgProfile()),
        15.horizontalSpace,
        Expanded(
            flex: 2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ApplangKey.nameUser.tr(),
                  style: TextStyle(fontSize: 20.sp),
                ),
                Text(
                  ApplangKey.jobTitle.tr(),
                  style: TextStyle(fontSize: 18.sp),
                )
              ],
            ))
      ]),
    ));
  }
}
