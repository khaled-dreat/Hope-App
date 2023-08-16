part of '../utils/import/app_import.dart';

class ControllerApi extends ChangeNotifier {
  bool loading = false;
  set changeLoading(bool value) {
    loading = value;
    notifyListeners();
  }

  bool loadingDetails = false;
  set changeLoadingDetails(bool value) {
    loadingDetails = value;
    notifyListeners();
  }

  //***********initRequest******* */
  void initRequest(BuildContext context) {
    fetchDataUsers(context);
    fetchDataResidents(context);
  }

  //***********Users */
  ModelUser? dataUsers;
  Future<void> fetchDataUsers(BuildContext context) async {
    changeLoading = true;
    dataUsers = await ApiEndPoint().getUsers(context);
    changeLoading = false;
    notifyListeners();
  }

  ModelUserDetails? dataUsersDetails;
  Future<void> fetchDataUsersDetails(BuildContext context, String id) async {
    loadingDetails = true;
    dataUsersDetails = await ApiEndPoint().getUserDetails(context, id);
    loadingDetails = false;
    notifyListeners();
  }

  bool loadingResidents = false;
  set changeLoadingResidents(bool value) {
    loadingResidents = value;
    notifyListeners();
  }

  ModelResidents? dataResidents;
  Future<void> fetchDataResidents(BuildContext context) async {
    loadingResidents = true;
    dataResidents = await ApiEndPoint().getResidents(context);
    loadingResidents = false;
    notifyListeners();
  }

  void resetDetailsUser() {
    dataUsersDetails = null;
    notifyListeners();
  }
}
