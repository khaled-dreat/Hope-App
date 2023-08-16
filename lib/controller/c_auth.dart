part of "../utils/import/app_import.dart";

class ControllerAuth extends ChangeNotifier {
  /***Eye */

  IconData icon = Icons.remove_red_eye;
  bool isNotShowPass = true;

  void changIcon() {
    if (isNotShowPass) {
      icon = Icons.lock;
      isNotShowPass = false;
    } else {
      icon = Icons.remove_red_eye;
      isNotShowPass = true;
    }
    notifyListeners();
  }

/***************Auto User */
  ModelAuthUser userAuth = ModelAuthUser();
  String currentPass = "";
  void setCurrentPass(String value) {
    currentPass = value;
  }

  /**       Firebases auth */
  FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  bool loading = false;
  String errorMessage = "";

  set chnangeLoding(bool value) {
    loading = value;
    notifyListeners();
  }

  set updateMessage(String value) {
    errorMessage = value;
    notifyListeners();
  }

  /**Regester */
  Future<User?> authMethod({bool isSignIn = true}) async {
    try {
      chnangeLoding = true;
      UserCredential resultUser = isSignIn
          ? await firebaseAuth.signInWithEmailAndPassword(
              email: userAuth.email!, password: userAuth.pass!)
          : await firebaseAuth.createUserWithEmailAndPassword(
              email: userAuth.email!, password: userAuth.pass!);

      if (resultUser.user != null) {
        chnangeLoding = false;
        return resultUser.user;
      } else {
        chnangeLoding = false;
        updateMessage = loc.tr(ApplangKey.notAccount);
        return null;
      }
    } on SocketException {
      chnangeLoding = false;
      updateMessage = loc.tr(ApplangKey.noInternet);
      return null;
    } on FirebaseAuthException catch (error) {
      chnangeLoding = false;
      updateMessage = error.message ?? "";
      return null;
    } catch (error) {
      chnangeLoding = false;
      updateMessage = error.toString();
      return null;
    }
  }

  /**Forgot Pass */

  Future<void> resetPass() async {
    try {
      chnangeLoding = true;
      await firebaseAuth.sendPasswordResetEmail(email: userAuth.email!);
      chnangeLoding = false;
    } on SocketException {
      chnangeLoding = false;
      updateMessage = loc.tr(ApplangKey.noInternet);
    } on FirebaseAuthException catch (error) {
      chnangeLoding = false;
      updateMessage = error.message ?? "";
    } catch (error) {
      chnangeLoding = false;
      updateMessage = error.toString();
    }
  }

  /**SignOut */
  Future<void> signOut() async {
    firebaseAuth.signOut();
  }
}
