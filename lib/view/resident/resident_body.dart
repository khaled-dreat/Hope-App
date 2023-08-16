part of "../../utils/import/app_import.dart";

class ResidentBody extends StatefulWidget {
  const ResidentBody({super.key});

  @override
  State<ResidentBody> createState() => _ResidentBodyState();
}

class _ResidentBodyState extends State<ResidentBody> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration.zero,
      () {
        ControllerApi pApi = Provider.of<ControllerApi>(context, listen: false);
        pApi.fetchDataResidents(context);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    ControllerApi pApi = Provider.of<ControllerApi>(context);

    return SingleChildScrollView(
      child: Column(
        children: [
          SearchBar(),
          pApi.loadingResidents
              ? AppLoading(
                  loading: LoadingType.page,
                )
              : (pApi.dataResidents?.listResidents != null &&
                      pApi.dataResidents!.listResidents!.isNotEmpty)
                  ? SizedBox(height: 590.h, child: const ResidentGrid())
                  : ErrorText(
                      title: ApplangKey.errorNoData.tr(),
                    )
        ],
      ),
    );
  }
}
