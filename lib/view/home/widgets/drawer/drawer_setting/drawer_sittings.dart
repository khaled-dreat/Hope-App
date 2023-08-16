part of '../../../../../utils/import/app_import.dart';

class DrawerSettings extends StatelessWidget {
  const DrawerSettings({super.key});
// todo : langug
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 4,
        child: Column(
          children: [
            DrawerSettingDesign(
              title: ApplangKey.residents.tr(),
              icon: AppSvg.resident,
              onTap: () {
                AppRoute.go(context, ResidentPage.nameRoute);
              },
            ),
            DrawerSettingDesign(
              title: ApplangKey.families.tr(),
              icon: AppSvg.families,
              onTap: () {
                AppRoute.go(context, PageFamily.nameRoute);
              },
            ),
            DrawerSettingDesign(
              title: ApplangKey.invoices.tr(),
              icon: AppSvg.invoice,
              onTap: () {
                AppRoute.go(context, InvoisePage.nameRoute);
              },
            ),
            DrawerSettingDesign(
              title: ApplangKey.employees.tr(),
              icon: AppSvg.users,
              onTap: () {
                AppRoute.go(context, UserPage.nameRoute);
              },
            ),
            DrawerSettingDesign(
                title: ApplangKey.language.tr(),
                icon: AppSvg.lang,
                onTap: () {},
                trailing: const DrawerLang()),
            DrawerSettingDesign(
              title: ApplangKey.themes.tr(),
              icon: AppSvg.theme,
              onTap: () {},
            ),
            DrawerSettingDesign(
              title: ApplangKey.terms.tr(),
              icon: AppSvg.terms,
              onTap: () {},
            ),
            DrawerSettingDesign(
              title: ApplangKey.logout.tr(),
              icon: AppSvg.logout,
              onTap: () {},
            )
          ],
        ));
  }
}
