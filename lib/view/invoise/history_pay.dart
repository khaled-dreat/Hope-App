part of "../../utils/import/app_import.dart";

class HistoryPay extends StatelessWidget {
  const HistoryPay({super.key, required this.balance, this.color});
  final String balance;
  final Color? color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        color: Colors.grey.shade300,
        elevation: 2,
        child: ListTile(
          title: Text(
            ApplangKey.yazanAbdAlghani.tr(),
            style: TextStyle(fontSize: 17.sp),
          ),
          subtitle: Text(
            "2020-11-10  20:22",
            style: TextStyle(fontSize: 15.sp),
          ),
          trailing: Text(
            balance,
            style: TextStyle(color: color ?? Colors.green, fontSize: 15.sp),
          ),
        ),
      ),
    );
  }
}
