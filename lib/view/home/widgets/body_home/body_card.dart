part of '../../../../utils/import/app_import.dart';

Stack bodyCardX(BuildContext context) {
  return Stack(
    children: [
      CustomPaint(
        foregroundPainter: FuceOutlinePainterX(),
      ),
      Directionality(
        textDirection: AppLang.currentLang(context) == kAr
            ? TextDirection.rtl
            : TextDirection.ltr,
        child: Padding(
          padding: EdgeInsets.only(left: 10.r, right: 10.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ApplangKey.families.tr(),
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(ApplangKey.familiesReview.tr(),
                  style: TextStyle(fontSize: 24.sp, color: Colors.white)),
              Icon(
                  AppLang.currentLang(context) == kAr
                      ? Icons.arrow_circle_left_outlined
                      : Icons.arrow_circle_right_outlined,
                  size: 50,
                  color: Colors.white)
            ],
          ),
        ),
      ),
    ],
  );
}

Stack bodyCardY(BuildContext context) {
  return Stack(
    children: [
      CustomPaint(
        foregroundPainter: FuceOutlinePainterY(),
      ),
      Directionality(
        textDirection: AppLang.currentLang(context) == kAr
            ? TextDirection.rtl
            : TextDirection.ltr,
        child: Padding(
          padding: EdgeInsets.only(left: 10.r, right: 10.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ApplangKey.residents.tr(),
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(ApplangKey.residentReviews.tr(),
                  style: TextStyle(fontSize: 24.sp, color: Colors.white)),
              Icon(
                  AppLang.currentLang(context) == kAr
                      ? Icons.arrow_circle_left_outlined
                      : Icons.arrow_circle_right_outlined,
                  size: 50,
                  color: Colors.white)
            ],
          ),
        ),
      ),
    ],
  );
}

Stack bodyCardA(BuildContext context) {
  return Stack(
    children: [
      CustomPaint(
        foregroundPainter: FuceOutlinePainterA(),
      ),
      Directionality(
        textDirection: AppLang.currentLang(context) == kAr
            ? TextDirection.rtl
            : TextDirection.ltr,
        child: Padding(
          padding: EdgeInsets.only(left: 10.r, right: 10.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ApplangKey.profile.tr(),
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(ApplangKey.viewprofile.tr(),
                  style: TextStyle(fontSize: 24.sp, color: Colors.white)),
              Icon(
                  AppLang.currentLang(context) == kAr
                      ? Icons.arrow_circle_left_outlined
                      : Icons.arrow_circle_right_outlined,
                  size: 50,
                  color: Colors.white)
            ],
          ),
        ),
      ),
    ],
  );
}

Stack bodyCardB(BuildContext context) {
  return Stack(
    children: [
      CustomPaint(
        foregroundPainter: FuceOutlinePainterB(),
      ),
      Directionality(
        textDirection: AppLang.currentLang(context) == kAr
            ? TextDirection.rtl
            : TextDirection.ltr,
        child: Padding(
          padding: EdgeInsets.only(left: 10.r, right: 10.r),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                ApplangKey.tasks.tr(),
                style: const TextStyle(fontSize: 20, color: Colors.white),
              ),
              Text(ApplangKey.taskReview.tr(),
                  style: TextStyle(fontSize: 24.sp, color: Colors.white)),
              //    18.verticalSpace,
              Icon(
                  AppLang.currentLang(context) == kAr
                      ? Icons.arrow_circle_left_outlined
                      : Icons.arrow_circle_right_outlined,
                  size: 50,
                  color: Colors.white)
            ],
          ),
        ),
      ),
    ],
  );
}
