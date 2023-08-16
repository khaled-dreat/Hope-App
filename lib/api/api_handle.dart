part of "../utils/import/app_import.dart";

abstract class ApiHandle {
  Future getUsers(BuildContext context);
  Future getUserDetails(BuildContext context, String id);
  Future getResidents(BuildContext context);
}
