part of "../../../utils/import/app_import.dart";

class ProfileResident extends StatelessWidget {
  const ProfileResident({super.key});
  static String nameRoute = "ProfileEmp";
  //todo:Refactor for this page
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Colors.grey.shade300,
            child: Center(
              child: Container(
                  margin: EdgeInsets.only(top: 55.r),
                  width: AppDime.fullwidth(context) * 0.95,
                  height: AppDime.fullHeight(context) * 1.3,
                  child: Card(
                    child: Column(children: [
                      Container(
                          margin: EdgeInsets.all(15.r),
                          width: AppDime.fullwidth(context),
                          height: 120.h,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Image.asset(AppImage.profileImage)),
                              IconButton(
                                icon: const Icon(
                                  Icons.close,
                                ),
                                onPressed: () {
                                  AppRoute.goBack(context);
                                },
                              )
                            ],
                          )),
                      Container(
                        margin: EdgeInsets.only(right: 15.r),
                        alignment: Alignment.centerRight,
                        child: Text(
                          ApplangKey.yazanAbdAlghani.tr(),
                          style: TextStyle(fontSize: 30.sp),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 15.r),
                        alignment: Alignment.centerRight,
                        child: Text(
                          "تُعد الصحة النفسية من المواضيع المهمة جدًّا لي وللكثيرين، وأجد أنّ أحد أهم مقوّمات الصحة النفسية العلاقاتُ الإنسانيةُ. وللحديث أكثر عنها، استضفت ياسر الحزيمي، مدرّب معتمد ذو خبرة في تقديم الدورات والمحاضرات في مجال «تطوير العلاقات ومهارات الاتصال»",
                          style: TextStyle(fontSize: 15.sp, color: Colors.grey),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      40.verticalSpace,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [
                              const Text("الجنس",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  )),
                              Text("ذكر", style: TextStyle(fontSize: 20.sp)),
                            ],
                          ),
                          Container(
                            color: Colors.grey,
                            width: 1.5.w,
                            height: 30.h,
                          ),
                          Column(
                            children: [
                              const Text("رقم الهوية",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  )),
                              4.verticalSpace,
                              Text("000000000",
                                  style: TextStyle(fontSize: 20.sp)),
                            ],
                          ),
                          Container(
                            color: Colors.grey,
                            width: 1.5.w,
                            height: 30.h,
                          ),
                          Column(
                            children: [
                              const Text("اسم العائلة",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  )),
                              Text("عبد الغني",
                                  style: TextStyle(fontSize: 20.sp)),
                            ],
                          ),
                        ],
                      ),
                      Container(
                        height: 45,
                        padding: EdgeInsets.symmetric(
                            vertical: 4.r, horizontal: 4.r),
                        margin: EdgeInsets.symmetric(
                            horizontal: 10.r, vertical: 25.r),
                        decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(8.r)),
                        child: TabBar(
                            indicator: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.r)),
                            tabs: [
                              Tab(
                                  child: Container(
                                alignment: Alignment.center,
                                height: 30.h,
                                //    width: 160.w,
                                child: Text(
                                  "الحالة النفسية",
                                  style: TextStyle(color: Colors.black),
                                ),
                              )),
                              Tab(
                                  child: Container(
                                alignment: Alignment.center,
                                height: 30.h,
                                width: 150.w,
                                child: Text(
                                  "الحالة الصحية",
                                  style: TextStyle(color: Colors.black),
                                ),
                              )),
                            ]),
                      ),
                      Expanded(
                          child: TabBarView(children: [
                        SizedBox(
                          width: double.infinity,
                          child: Card(
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                "تُعد الصحة النفسية من المواضيع المهمة جدًّا لي وللكثيرين، وأجد أنّ أحد أهم مقوّمات الصحة النفسية العلاقاتُ الإنسانيةُ. وللحديث أكثر عنها، استضفت ياسر الحزيمي، مدرّب معتمد ذو خبرة في تقديم الدورات والمحاضرات في مجال «تطوير العلاقات ومهارات الاتصال»",
                                style: TextStyle(fontSize: 20.sp),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: Card(
                            //     color: Colors.blue.shade50,
                            child: Padding(
                              padding: const EdgeInsets.all(20),
                              child: Text(
                                "تُعد الصحة النفسية من المواضيع المهمة جدًّا لي وللكثيرين، وأجد أنّ أحد أهم مقوّمات الصحة النفسية العلاقاتُ الإنسانيةُ. وللحديث أكثر عنها، استضفت ياسر الحزيمي، مدرّب معتمد ذو خبرة في تقديم الدورات والمحاضرات في مجال «تطوير العلاقات ومهارات الاتصال»",
                                style: TextStyle(fontSize: 20.sp),
                              ),
                            ),
                          ),
                        ),
                      ])),
                    ]),
                  )),
            ),
          ),
        ),
      ),
    );
  }
}
