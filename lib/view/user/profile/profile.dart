part of "../../../utils/import/app_import.dart";

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key, required this.userID});
  static String nameRoute = "ProfilePage";
  final String userID;
  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration.zero,
      () {
        ControllerApi pApi = Provider.of<ControllerApi>(context, listen: false);
        pApi.fetchDataUsersDetails(context, widget.userID);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    ControllerApi pApi = Provider.of<ControllerApi>(context);
    ModelUserDetailsApp? data = pApi.dataUsersDetails?.userDetails;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          AppRoute.goBack(context);
        },
      ),
      body: pApi.loadingDetails
          ? const Center(
              child: AppLoading(
                loading: LoadingType.page,
              ),
            )
          : (pApi.dataUsersDetails?.userDetails != null)
              ? Stack(children: [
                  Column(
                    children: [
                      Expanded(
                          child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              colors: [
                                Colors.green.shade100,
                                Colors.green.shade600,
                              ],
                              begin: Alignment.centerLeft,
                              stops: const [0.0, 0.5],
                              end: Alignment.centerRight),
                        ),
                      )),
                      Expanded(
                          flex: 2,
                          child: Container(
                            color: Colors.grey.shade200,
                          ))
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 50.r),
                    child: Center(
                        child: SizedBox(
                            width: 340.w,
                            height: 560.h,
                            child: Card(
                              color: Colors.grey.shade100,
                              child: Column(children: [
                                15.verticalSpace,
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 4.w,
                                          color: Colors.grey.shade400)),
                                  width: 140.w,
                                  child: Image(
                                      image: AssetImage(AppImage.profileImage)),
                                ),
                                15.verticalSpace,
                                Text(
                                  "${data?.name}",
                                  style: TextStyle(fontSize: 20.sp),
                                ),
                                10.verticalSpace,
                                Text(
                                  '${data?.jobTitle}',
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      color: Colors.grey.shade500),
                                ),
                                20.verticalSpace,
                                Stack(
                                  children: const [DesignCardContactDetails()],
                                ),
                                20.verticalSpace,
                                Divider(
                                  thickness: 2,
                                  endIndent: 15.w,
                                  indent: 15.w,
                                ),
                                10.verticalSpace,
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.phone,
                                      ),
                                      iconSize: 50,
                                      color: Colors.grey,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.message,
                                      ),
                                      iconSize: 50,
                                      color: Colors.grey,
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.email,
                                      ),
                                      iconSize: 50,
                                      color: Colors.grey,
                                    ),
                                  ],
                                )
                              ]),
                            ))),
                  )
                ])
              : ErrorText(title: ApplangKey.errorNoData.tr()),
    );
  }
}
