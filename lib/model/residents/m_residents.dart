part of '../../utils/import/app_import.dart';

class ModelResidents {
  List<ModelResidentsApp>? listResidents;

  ModelResidents({this.listResidents});

  ModelResidents.fromJson(Map<String, dynamic> json) {
    if (json[ApiKey.residents] != null) {
      listResidents = <ModelResidentsApp>[];
      json[ApiKey.residents].forEach((resident) {
        listResidents!.add(ModelResidentsApp.fromJson(resident));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (listResidents != null) {
      data[ApiKey.residents] =
          listResidents!.map((resident) => resident.toJson()).toList();
    }
    return data;
  }
}
