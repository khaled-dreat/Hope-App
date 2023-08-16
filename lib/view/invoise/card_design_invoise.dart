part of "../../utils/import/app_import.dart";

class CardDesignInvoise extends StatelessWidget {
  const CardDesignInvoise(
      {super.key, required this.title, required this.description, this.color});
  final String title;
  final String description;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 150.w,
        height: 110.h,
        child: Card(
          child: Padding(
            padding: EdgeInsets.only(top: 10.r, right: 8.r, left: 8.r),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    description,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 18.sp),
                  ),
                  //  7.verticalSpace,
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 18.sp, color: color ?? Colors.green),
                  ),
                ]),
          ),
        ));
  }
}
