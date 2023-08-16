import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hope_app/utils/import/app_import.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

import 'firebase_options.dart';

/********* 
 * WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  ); */
void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await EasyLocalization.ensureInitialized();

  runApp(EasyLocalization(
      path: 'assets/lang',
      supportedLocales: const [Locale('en'), Locale('ar')],
      fallbackLocale: const Locale('en'),
      child: AppRestart(
          child: MultiProvider(providers: providers, child: const HopeApp()))));
}

List<SingleChildWidget> providers = [
  ChangeNotifierProvider(
    create: (_) => ControllerLang(),
  ),
  ChangeNotifierProvider(
    create: (_) => ControllerApi(),
  ),
  ChangeNotifierProvider(create: (_) => ControllerDb()),
  ChangeNotifierProvider(create: (_) => ControllerAuth()),
];
