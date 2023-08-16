part of '../../../utils/import/app_import.dart';

class FamliyCardDesign extends StatelessWidget {
  const FamliyCardDesign({super.key, this.gendaer});
  final bool? gendaer;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AppRoute.go(context, FamilyProfile.nameRoute);
      },
      child: Card(
        child: Center(
          child: Text(
            ApplangKey.abdAlghani..tr(),
            style: TextStyle(fontSize: 20.sp),
          ),
        ),
      ),
    );
  }
}
