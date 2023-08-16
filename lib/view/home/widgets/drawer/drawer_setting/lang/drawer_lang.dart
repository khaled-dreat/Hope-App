part of '../../../../../../utils/import/app_import.dart';

class DrawerLang extends StatefulWidget {
  const DrawerLang({super.key});

  @override
  State<DrawerLang> createState() => _DrawerLangState();
}

class _DrawerLangState extends State<DrawerLang> {
  ChoiceLang? choose;

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      // Provider Lang
      final ControllerLang pLang =
          Provider.of<ControllerLang>(context, listen: false);
      pLang.checkLang(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    // Provider Lang

    final ControllerLang pLang = Provider.of<ControllerLang>(context);
    return DropdownButton<ChoiceLang>(
      value: pLang.lang,
      items: [
        DropdownMenuItem(
            value: ChoiceLang.en, child: Text(ChoiceLang.en.nameLang.tr())),
        DropdownMenuItem(
            value: ChoiceLang.ar, child: Text(ChoiceLang.ar.nameLang.tr()))
      ],
      onChanged: (value) {
        pLang.changeLang(context, value ?? ChoiceLang.ar);
        choose = value!;
      },
    );
  }
}
