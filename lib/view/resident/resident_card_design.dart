part of '../../utils/import/app_import.dart';

class ResidentCardDesign extends StatelessWidget {
  const ResidentCardDesign({super.key, this.gendaer, required this.data});
  final bool? gendaer;
  final ModelResidentsApp? data;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AppRoute.go(context, ProfileResident.nameRoute);
      },
      child: Card(
        child: ListTile(
          trailing: const Icon(Icons.chevron_right),
          title: Text("${data?.name}"),
          subtitle: Text("77 ${ApplangKey.year.tr()}"),
          leading: SvgPicture.asset(
            AppIcons.resident,
            height: 50,
            width: 50,
          ),
        ),
      ),
    );
  }
}
