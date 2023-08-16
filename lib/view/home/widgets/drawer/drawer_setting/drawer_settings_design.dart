part of '../../../../../utils/import/app_import.dart';

class DrawerSettingDesign extends StatelessWidget {
  const DrawerSettingDesign(
      {super.key,
      required this.title,
      required this.icon,
      required this.onTap,
      this.trailing});
  final String title;
  final Widget? trailing;
  final SvgPicture icon;
  final Function() onTap;

// todo : languge
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      trailing: trailing,
      leading: icon,
      onTap: onTap,
    );
  }
}
