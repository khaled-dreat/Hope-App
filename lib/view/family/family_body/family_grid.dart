part of '../../../utils/import/app_import.dart';

class FamilyGridView extends StatelessWidget {
  const FamilyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: 2, // vertical
          crossAxisSpacing: 2, // horizontal
        ),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const FamliyCardDesign();
        },
      ),
    );
  }
}
