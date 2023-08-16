part of '../../../../utils/import/app_import.dart';

class CardDesign extends StatelessWidget {
  const CardDesign(
      {super.key, required this.color, required this.typeOFCard, this.onTap});
  final Color color;
  final Widget typeOFCard;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Card(
        child: Container(
          width: 150.w,
          height: 150.h,
          color: color,
          child: typeOFCard,
        ),
      ),
    );
  }
}
