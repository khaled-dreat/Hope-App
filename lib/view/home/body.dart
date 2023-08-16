part of "../../utils/import/app_import.dart";

class HomePage extends StatelessWidget {
  static String nameRoute = "HomePage";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      drawer: DrawerBody(),
      appBar: AppBarHome(),
      body: Directionality(textDirection: TextDirection.ltr, child: BodyHome()),
    );
  }
}
