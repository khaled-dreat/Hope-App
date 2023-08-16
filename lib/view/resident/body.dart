part of "../../utils/import/app_import.dart";

class ResidentPage extends StatelessWidget {
  const ResidentPage({super.key});
  static String nameRoute = "Resident";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(appBar: AppBarHome(), body: ResidentBody());
  }
}
