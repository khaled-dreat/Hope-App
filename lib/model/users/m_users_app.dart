part of '../../utils/import/app_import.dart';

class ModelUserApp {
  int? id;
  String? name;
  String? jobTitle;
  String? email;
  String? contactNumber;
  String? address;
  String? userName;
  String? pass;

  ModelUserApp(
      {this.id,
      this.name,
      this.jobTitle,
      this.email,
      this.contactNumber,
      this.address,
      this.userName,
      this.pass});

  ModelUserApp.fromJson(Map<String, dynamic> json) {
    id = json[ApiKey.id];
    name = json[ApiKey.name];
    jobTitle = json[ApiKey.jobTitle];
    email = json[ApiKey.email];
    contactNumber = json[ApiKey.contactNumber];
    address = json[ApiKey.address];
    userName = json[ApiKey.userName];
    pass = json[ApiKey.pass];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data[ApiKey.id] = id;
    data[ApiKey.name] = name;
    data[ApiKey.jobTitle] = jobTitle;
    data[ApiKey.email] = email;
    data[ApiKey.contactNumber] = contactNumber;
    data[ApiKey.address] = address;
    data[ApiKey.userName] = userName;
    data[ApiKey.pass] = pass;
    return data;
  }
}
