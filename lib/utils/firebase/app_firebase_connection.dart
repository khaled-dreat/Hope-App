part of "../import/app_import.dart";

class FireBaseConnection extends StatefulWidget {
  const FireBaseConnection({super.key});
  static String nameRoute = "FirebaseConnection";

  @override
  State<FireBaseConnection> createState() => _FireBaseConnectionState();
}

class _FireBaseConnectionState extends State<FireBaseConnection> {
  Future<FirebaseApp>? firebaseApp;
  @override
  void initState() {
    super.initState();
    firebaseApp = Firebase.initializeApp();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: firebaseApp,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const AppLoading(loading: LoadingType.page);
          }
          if (snapshot.connectionState == ConnectionState.done) {
            if (snapshot.hasData) {
              return const PageSplash();
            } else {
              return ErrorText(title: ApplangKey.errorFetchData);
            }
          } else {
            return ErrorText(title: ApplangKey.errorInitFirebase);
          }
        });
  }
}
