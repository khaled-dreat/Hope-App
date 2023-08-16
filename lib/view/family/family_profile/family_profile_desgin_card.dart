part of "../../../utils/import/app_import.dart";

class FamilyProfileDesginCard extends StatelessWidget {
  const FamilyProfileDesginCard(
      {super.key,
      required this.description,
      required this.icon,
      required this.title,
      required this.color});
  final IconData icon;
  final String title;
  final String description;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: 150.h,
        width: 150.w,
        child: Card(
          color: color,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(icon, size: 40.r, color: Colors.white),
                Text(
                  title,
                  style: TextStyle(fontSize: 20.sp, color: Colors.white),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    description,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 17.sp, color: Colors.white),
                  ),
                )
              ]),
        ));
  }
}
