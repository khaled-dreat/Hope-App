part of "../../utils/import/app_import.dart";

class ModelUser {
  List<ModelUserApp>? listUser;

  ModelUser({this.listUser});

  ModelUser.fromJson(Map<String, dynamic> json) {
    if (json[ApiKey.user] != null) {
      listUser = <ModelUserApp>[];
      json[ApiKey.user].forEach((user) {
        listUser!.add(ModelUserApp.fromJson(user));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (listUser != null) {
      data[ApiKey.user] = listUser?.map((user) => user.toJson()).toList();
    }
    return data;
  }
}
