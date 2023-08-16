part of '../../utils/import/app_import.dart';

class ResidentGrid extends StatelessWidget {
  const ResidentGrid({super.key});

  @override
  Widget build(BuildContext context) {
    ControllerApi pApi = Provider.of<ControllerApi>(context);
    List<ModelResidentsApp>? data = pApi.dataResidents?.listResidents;
    return Expanded(
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: data?.length,
        itemBuilder: (BuildContext context, int index) {
          return ResidentCardDesign(
            data: data?.elementAt(index),
          );
        },
      ),
    );
  }
}
