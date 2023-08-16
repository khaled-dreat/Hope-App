part of "../../utils/import/app_import.dart";

class InvoisePage extends StatelessWidget {
  const InvoisePage({super.key});
  static String nameRoute = "InvoisePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        focusColor: Colors.indigo.shade600,
        backgroundColor: Colors.indigo.shade400,
        child: Icon(
          Icons.chevron_left_sharp,
          size: 35.r,
        ),
        onPressed: () {
          AppRoute.goBack(context);
        },
      ),
      body: const BodyInvoise(),
    );
  }
}
