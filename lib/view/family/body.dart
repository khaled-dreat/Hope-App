part of "../../utils/import/app_import.dart";

class PageFamily extends StatelessWidget {
  const PageFamily({super.key});
  static String nameRoute = "PageFamily";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(appBar: AppBarHome(), body: FamilyBody());
  }
}
