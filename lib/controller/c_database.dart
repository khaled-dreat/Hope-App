part of '../utils/import/app_import.dart';

class ControllerDb extends ChangeNotifier {
  // Message
  String message = "";
  set changeMessage(String msg) {
    message = msg;
    notifyListeners();
  }

// manage Installation
  Future maneageInstltion(ModelUserDb data) async {
    if (await QueryUser.db.getUserId(data) != null) {
      return await unInstallApp(data);
    } else {
      return await installApp(data);
    }
  }

  // install App
  Future<bool> installApp(ModelUserDb data) async {
    if (await QueryUser.db.insertUser(data) > 0) {
      //todo  changeMessage = tr(ApplangKey.successInstalled);

      return true;
    } else {
      AppToast.toast(ApplangKey.errorDownloading.tr());
      return false;
    }
  }

  // unInstall App
  Future<bool> unInstallApp(ModelUserDb data) async {
    if (await QueryUser.db.deleteUserByID(data) > 0) {
      //todo   changeMessage = tr(ApplangKey.successUninstalled);
      if (listUserDb != null) {
        listUserDb!.removeWhere((element) => element.id == element.id);
        notifyListeners();
      }
      return true;
    } else {
      AppToast.toast(ApplangKey.errorUninstalling.tr());
      return false;
    }
  }

  // list User
  List<ModelUserDb>? listUserDb;
  Future<void> get fetchDataFromDB async {
    listUserDb = await QueryUser.db.getUsers;
    notifyListeners();
  }

  //Check
  Future<bool> checkInstallApp(ModelUserDb data) async {
    if (await QueryUser.db.getUserId(data) != null) {
      return true;
    } else {
      return false;
    }
  }

  // Convert
  ModelUserDb convert(ModelUserApp data) {
    return ModelUserDb(
      address: data.address,
      contactNumber: data.contactNumber,
      email: data.email,
      id: data.id.toString(),
      jobTitle: data.jobTitle,
      name: data.name,
    );
  }
}
