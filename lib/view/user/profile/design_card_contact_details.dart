part of '../../../utils/import/app_import.dart';

class DesignCardContactDetails extends StatelessWidget {
  const DesignCardContactDetails({super.key});

  @override
  Widget build(BuildContext context) {
    ControllerApi pApi = Provider.of<ControllerApi>(context);

    ModelUserDetailsApp? data = pApi.dataUsersDetails?.userDetails;
    return SizedBox(
        width: 340.w,
        height: 200.h,
        child: Card(
          elevation: 2,
          child: Column(
            children: [
              ListTile(
                subtitle: Text(
                  "${data?.email}",
                  style: TextStyle(fontSize: 13.sp),
                ),
                title: Text(
                  ApplangKey.email.tr(),
                  style: TextStyle(fontSize: 15.sp),
                ),
              ),
              ListTile(
                subtitle: Text(
                  "${data?.contactNumber}",
                  style: TextStyle(fontSize: 13.sp),
                ),
                title: Text(
                  ApplangKey.contactNumber.tr(),
                  style: TextStyle(fontSize: 15.sp),
                ),
              ),
              ListTile(
                subtitle: Text(
                  "${data?.address}",
                  style: TextStyle(fontSize: 13.sp),
                ),
                title: Text(
                  ApplangKey.address.tr(),
                  style: TextStyle(fontSize: 15.sp),
                ),
              )
            ],
          ),
        ));
  }
}
