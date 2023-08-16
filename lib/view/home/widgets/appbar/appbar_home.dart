part of '../../../../utils/import/app_import.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        ApplangKey.login.tr(),
      ),
      backgroundColor: Colors.indigo.shade600,
      actions: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: AppSvg.notification,
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
