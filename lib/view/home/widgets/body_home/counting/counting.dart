part of '../../../../../utils/import/app_import.dart';

class Counting extends StatelessWidget {
  const Counting({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.r),
      //color: Colors.amber,
      width: 320.w,
      height: 300.h,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Column(
          children: [
            SvgPicture.asset(
              AppIcons.resident,
              width: 70.w,
              height: 70.h,
            ),
            Text(
              ApplangKey.residents.tr(),
              style: TextStyle(fontSize: 20.sp),
            ),
            Text(
              "20",
              style: TextStyle(fontSize: 15.sp),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5.r),
              width: 150,
              child: Divider(
                indent: 10,
                thickness: 2.5.h,
              ),
            ),
            SvgPicture.asset(
              AppIcons.users,
              width: 70.w,
              height: 70.h,
            ),
            Text(
              ApplangKey.employees.tr(),
              style: TextStyle(fontSize: 20.sp),
            ),
            Text(
              "30",
              style: TextStyle(fontSize: 15.sp),
            ),
          ],
        ),
        Container(
          margin: const EdgeInsets.only(bottom: 60, left: 20),
          width: 2,
          height: 280,
          color: Colors.grey,
        ),
        Column(
          children: [
            SvgPicture.asset(
              AppIcons.familis,
              width: 70.w,
              height: 70.h,
            ),
            Text(
              ApplangKey.families.tr(),
              style: TextStyle(fontSize: 20.sp),
            ),
            Text(
              "22",
              style: TextStyle(fontSize: 15.sp),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5.r),
              width: 150,
              child: Divider(
                indent: 10,
                thickness: 2.5.h,
              ),
            ),
            SvgPicture.asset(
              AppIcons.userOnline,
              width: 70.w,
              height: 70.h,
            ),
            Text(
              ApplangKey.employeesActive.tr(),
              style: TextStyle(fontSize: 20.sp),
            ),
            Text(
              "5",
              style: TextStyle(fontSize: 15.sp),
            ),
          ],
        )
      ]),
    );
  }
}
