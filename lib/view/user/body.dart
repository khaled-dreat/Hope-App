part of '../../utils/import/app_import.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});
  static String nameRoute = "UserPage";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(appBar: AppBarHome(), body: BodyUser());
  }
}
