part of '../../../utils/import/app_import.dart';

class ModelUserDetailsApp {
  String? name;
  String? jobTitle;
  String? email;
  String? contactNumber;
  String? address;

  ModelUserDetailsApp(
      {this.name, this.jobTitle, this.email, this.contactNumber, this.address});

  ModelUserDetailsApp.fromJson(Map<String, dynamic> json) {
    name = json[ApiKey.name];
    jobTitle = json[ApiKey.jobTitle];
    email = json[ApiKey.email];
    contactNumber = json[ApiKey.contactNumber];
    address = json[ApiKey.address];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data[ApiKey.name] = name;
    data[ApiKey.jobTitle] = jobTitle;
    data[ApiKey.email] = email;
    data[ApiKey.contactNumber] = contactNumber;
    data[ApiKey.address] = address;
    return data;
  }
}
