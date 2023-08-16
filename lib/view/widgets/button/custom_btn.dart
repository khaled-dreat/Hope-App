part of "../../../utils/import/app_import.dart";

class CustomBtn extends StatelessWidget {
  const CustomBtn(
      {super.key, this.height, required this.title, required this.onTap});
  final double? height;
  final String title;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: AppColors.splashBtnLight,
      borderRadius: BorderRadius.circular(AppDime.xxl.r),
      child: Container(
        width: AppDime.fullScreen.sw,
        height: height ?? AppDime.heightBtn.h,
        margin: EdgeInsets.symmetric(
            horizontal: AppDime.md.r, vertical: AppDime.md.r),
        padding: EdgeInsets.zero,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: AppColors.btnColorsLight),
            color: Colors.amber,
            borderRadius: BorderRadius.circular(AppDime.xxl.r)),
        child: Text(
          title.toUpperCase().tr(),
          style: AppTheme.h5(context)?.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
