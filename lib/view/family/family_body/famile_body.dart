part of '../../../utils/import/app_import.dart';

class FamilyBody extends StatelessWidget {
  const FamilyBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [SearchBar(), FamilyGridView()],
    );
  }
}
