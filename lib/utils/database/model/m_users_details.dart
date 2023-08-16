// ignore_for_file: public_member_api_docs, sort_constructors_first
part of '../../import/app_import.dart';

class ModelUserDb {
  String? id;
  String? name;
  String? userDetails;
  String? email;
  String? contactNumber;
  String? address;
  String? jobTitle;

  ModelUserDb({
    this.id,
    this.name,
    this.userDetails,
    this.email,
    this.contactNumber,
    this.address,
    this.jobTitle,
  });

  ModelUserDb.fromMap({required Map<String, dynamic> map})
      : assert(map.isNotEmpty),
        id = map[TableUserDetails.colId],
        name = map[TableUserDetails.colName],
        email = map[TableUserDetails.colEmail],
        address = map[TableUserDetails.colAddress],
        contactNumber = map[TableUserDetails.colContactNumber],
        jobTitle = map[TableUserDetails.colContactNumber];

  Map<String, dynamic> toMap() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data[TableUserDetails.colName] = name;
    data[TableUserDetails.colJobTitle] = jobTitle;
    data[TableUserDetails.colEmail] = email;
    data[TableUserDetails.colContactNumber] = contactNumber;
    data[TableUserDetails.colAddress] = address;
    return data;
  }
}
