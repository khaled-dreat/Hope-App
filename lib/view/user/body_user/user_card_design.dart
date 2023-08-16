part of '../../../utils/import/app_import.dart';

class UserCardDesIgn extends StatefulWidget {
  const UserCardDesIgn({super.key, required this.datauser});
  final ModelUserApp datauser;

  @override
  State<UserCardDesIgn> createState() => _UserCardDesIgnState();
}

class _UserCardDesIgnState extends State<UserCardDesIgn> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        AppRoute.goMaterial(
            context,
            ProfilePage(
              userID: "${widget.datauser.id}",
            ));
      },
      child: Card(
          child: ListTile(
        title: Text("${widget.datauser.name}"),
        trailing: const Icon(Icons.chevron_right),
        leading: SvgPicture.asset(
          AppIcons.users,
          width: 33.w,
          height: 33.h,
        ),
        subtitle: Text('${widget.datauser.jobTitle}'),
      )),
    );
  }
}
