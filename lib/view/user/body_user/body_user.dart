part of "../../../utils/import/app_import.dart";

class BodyUser extends StatelessWidget {
  const BodyUser({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SearchBar(),
      SizedBox(
        height: (AppDime.fullwidth(context) * 1.615),
        child: const Userr(),
      ),
    ]);
  }
}
