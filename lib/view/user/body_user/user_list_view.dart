part of '../../../utils/import/app_import.dart';

class UserListViewBuilder extends StatelessWidget {
  const UserListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    ControllerApi pApi = Provider.of<ControllerApi>(context);
    List<ModelUserApp> data = pApi.dataUsers!.listUser!;
    return ListView.builder(
      shrinkWrap: true,
      itemCount: data.length,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.w),
            child: UserCardDesIgn(
              datauser: data.elementAt(index),
            ));
      },
    );
  }
}
