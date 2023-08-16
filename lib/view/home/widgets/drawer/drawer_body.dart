part of '../../../../utils/import/app_import.dart';

class DrawerBody extends StatelessWidget {
  const DrawerBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Drawer(
        child: Column(children: [
          //Heder
          const DrawerHeder(),
          Divider(
            thickness: 2.w,
          ),
          //Settings
          const DrawerSettings()
        ]),
      ),
    );
  }
}
