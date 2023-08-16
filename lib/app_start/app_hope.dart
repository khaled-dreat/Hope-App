part of '../utils/import/app_import.dart';

class HopeApp extends StatelessWidget {
  const HopeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      builder: (context, child) {
        return MaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          debugShowCheckedModeBanner: false,
          routes: AppRoute.routes,
          initialRoute: AppRoute.initialRoute,
          theme: AppThemeChooes.ligh(context),
          themeMode: ThemeMode.light,
        );
      },
    );
  }
}
