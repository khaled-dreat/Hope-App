part of "../../import/app_import.dart";

class DtatBaseConnection {
  //* init DB
  Future<Database> init() async {
    //* path Directors
    Directory directors = await dir.getApplicationDocumentsDirectory();
    div.log("directory : ${directors.path}", name: "Connection DataBase");
    String pathDB = path.join(directors.path, "users.db");
    return openDatabase(
      pathDB,
      version: 1,
      onCreate: (db, version) async {
        await db.execute('CREATE TABLE ${TableUserDetails.nameTable} ('
            '${TableUserDetails.colId} TEXT PRIMARY KEY, '
            '${TableUserDetails.colAddress} TEXT, '
            '${TableUserDetails.colContactNumber} TEXT, '
            '${TableUserDetails.colEmail} TEXT, '
            '${TableUserDetails.colJobTitle} TEXT, '
            '${TableUserDetails.colName} TEXT '
            ')');
      },
    );
  }
}
