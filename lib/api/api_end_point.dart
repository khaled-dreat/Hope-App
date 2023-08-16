part of '../utils/import/app_import.dart';

class ApiEndPoint extends ApiHandle {
  int timeout = 100;

  @override
  Future getUsers(BuildContext context) async {
    Uri urlEmp =
        Uri(scheme: ApiKey.http, host: ApiKey.host, path: ApiKey.pathUsers);
    try {
      http.Response res =
          await http.get(urlEmp).timeout(Duration(seconds: timeout));
      if (res.statusCode == 200) {
        Map<String, dynamic> data = convert.jsonDecode(res.body);
        return ModelUser.fromJson(data);
      } else {
        AppToast.toast(ApplangKey.errorFetchData.tr());
        return null;
      }
    } catch (error) {
      div.log('Error Fetch Data User',
          name: 'Api User', error: error.toString());
      return null;
    }
  }

  @override
  Future getUserDetails(BuildContext context, id) async {
    Uri urlUserDetails =
        Uri.http(ApiKey.host, ApiKey.pathUserDetails, {"id": id});
    try {
      http.Response res =
          await http.get(urlUserDetails).timeout(Duration(seconds: timeout));

      if (res.statusCode == 200) {
        Map<String, dynamic> data = convert.jsonDecode(res.body);
        return ModelUserDetails.fromJson(data);
      } else {
        AppToast.toast(ApplangKey.errorFetchData.tr());
        return null;
      }
    } catch (error) {
      div.log('Error Fetch Data User',
          name: 'Api User Details', error: error.toString());
      return null;
    }
  }

  @override
  Future getResidents(BuildContext context) async {
    Uri urlResidents =
        Uri(scheme: ApiKey.http, host: ApiKey.host, path: ApiKey.pathResidents);
    print(urlResidents);
    try {
      http.Response res =
          await http.get(urlResidents).timeout(Duration(seconds: timeout));
      if (res.statusCode == 200) {
        Map<String, dynamic> data = convert.jsonDecode(res.body);
        return ModelResidents.fromJson(data);
      } else {
        AppToast.toast(ApplangKey.errorFetchData.tr());
        return null;
      }
    } catch (error) {
      div.log('Error Fetch Data Residents',
          name: 'Api Residents', error: error.toString());
      return null;
    }
  }
}
