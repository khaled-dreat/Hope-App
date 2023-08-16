part of "../../import/app_import.dart";

class QueryUser {
  // Constructor Privet
  QueryUser._();
// create obhect from QueryApp
  static final QueryUser db = QueryUser._();
// DataBase
  Database? database;
  Future<Database> get hasDB async =>
      database ??= await DtatBaseConnection().init();

  Future<int> insertUser(ModelUserDb data) async {
    try {
      Database connectionDb = await hasDB;
      return connectionDb.insert(TableUserDetails.nameTable, data.toMap());
    } catch (e) {
      div.log(ApplangKey.errorDownloading.tr(),
          name: 'QuereApps', error: e.toString());
      return -1;
    }
  }

  Future<int> deleteUserByID(ModelUserDb data) async {
    try {
      Database connectionDb = await hasDB;
      return connectionDb.delete('${TableUserDetails.nameTable}',
          where: '${TableUserDetails.colId}', whereArgs: [data.id]);
    } catch (e) {
      div.log(ApplangKey.errorUninstalling.tr(),
          name: 'QuereApps', error: e.toString());
      return -1;
    }
  }

  Future<int> deleteTable(ModelUserDb data) async {
    try {
      Database connectionDb = await hasDB;
      return connectionDb.delete(
        '${TableUserDetails.nameTable}',
      );
    } catch (e) {
      div.log(ApplangKey.errorUninstalling.tr(),
          name: 'error when delete table user', error: e.toString());
      return -1;
    }
  }

  Future<List<ModelUserDb>?> get getUsers async {
    try {
      Database connectionDB = await hasDB;
      List<Map<String, dynamic>> listData = await connectionDB.query(
          TableUserDetails.nameTable,
          orderBy: '${TableUserDetails.colId} DESC');
      return listData.isNotEmpty
          ? listData.map((users) => ModelUserDb.fromMap(map: users)).toList()
          : null;
    } catch (e) {
      div.log('error get all app',
          name: 'error when delete table user', error: e.toString());
      return null;
    }
  }

  Future<ModelUserDb?> getUserId(ModelUserDb data) async {
    try {
      Database connenctionDB = await hasDB;
      List<Map<String, dynamic>> listData = await connenctionDB.query(
          TableUserDetails.nameTable,
          where: '${TableUserDetails.colId} = ?',
          whereArgs: [data.id]);
      return listData.isNotEmpty
          ? ModelUserDb.fromMap(map: listData.first)
          : null;
    } catch (e) {
      div.log('error get app by id',
          name: 'error when delete table user', error: e.toString());
      return null;
    }
  }

  Future updateUser(ModelUserDb data) async {
    try {
      Database connectionDB = await hasDB;
      return connectionDB.update(TableUserDetails.colName, data.toMap(),
          where: '${TableUserDetails.colId} = ?', whereArgs: [data.id]);
    } catch (e) {
      div.log('Error Update',
          name: 'error when delete table user', error: e.toString());
      return -1;
    }
  }
}
