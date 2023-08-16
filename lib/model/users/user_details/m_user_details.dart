part of '../../../utils/import/app_import.dart';

class ModelUserDetails {
  ModelUserDetailsApp? userDetails;

  ModelUserDetails({this.userDetails});

  ModelUserDetails.fromJson(Map<String, dynamic> json) {
    userDetails = json[ApiKey.details] != null
        ? ModelUserDetailsApp.fromJson(json[ApiKey.details])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (userDetails != null) {
      data[ApiKey.details] = userDetails!.toJson();
    }
    return data;
  }
}
