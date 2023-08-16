// ignore_for_file: public_member_api_docs, sort_constructors_first
part of "../../utils/import/app_import.dart";

class ModelAuthUser {
  String? email;
  String? pass;
  ModelAuthUser({
    this.email,
    this.pass,
  });

  void setEmail(String? value) => email = value;
  void setPass(String? value) => pass = value;

  @override
  String toString() => 'ModelAuthUser(email: $email, password: $pass)';
}
