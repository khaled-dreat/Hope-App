part of '../../utils/import/app_import.dart';

class ModelResidentsApp {
  int? id;
  String? name;
  String? dOB;
  int? personalID;
  String? details;
  String? gender;

  ModelResidentsApp(
      {this.id,
      this.name,
      this.dOB,
      this.personalID,
      this.details,
      this.gender});

  ModelResidentsApp.fromJson(Map<String, dynamic> json) {
    id = json[ApiKey.id];
    name = json[ApiKey.name];
    dOB = json[ApiKey.dOB];
    personalID = json[ApiKey.personalID];
    details = json[ApiKey.details];
    gender = json[ApiKey.gender];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data[ApiKey.id] = id;
    data[ApiKey.name] = name;
    data[ApiKey.dOB] = dOB;
    data[ApiKey.personalID] = personalID;
    data[ApiKey.details] = details;
    data[ApiKey.gender] = gender;
    return data;
  }
}
