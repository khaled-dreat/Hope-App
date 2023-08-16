part of "../../utils/import/app_import.dart";

class BodyInvoise extends StatelessWidget {
  const BodyInvoise({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Stack(children: [
            Opacity(
              opacity: 0.5,
              child: ClipPath(
                clipper: WaveClipperTwo(),
                child: Container(
                  color: Colors.indigo.shade600,
                  height: 120.h,
                ),
              ),
            ),
            Opacity(
              opacity: 0.5,
              child: ClipPath(
                clipper: WaveClipperTwo(),
                child: Container(
                  color: Colors.indigo.shade600,
                  height: 100.h,
                ),
              ),
            )
          ]),
          Container(
            margin: EdgeInsets.only(right: 15.r, bottom: 20.r),
            alignment: Alignment.centerRight,
            child: Text(
              ApplangKey.registerFamilyInvoices.tr(),
              style: TextStyle(fontSize: 22.sp),
            ),
          ),
          SizedBox(
            width: 320.w,
            height: 260.h,
            child: Column(children: [
              Row(children: [
                CardDesignInvoise(
                  description: ApplangKey.lastPayment.tr(),
                  title: '₪400.0',
                ),
                20.horizontalSpace,
                CardDesignInvoise(
                  description: ApplangKey.familyBalance.tr(),
                  title: '10.0',
                  color: Colors.red,
                ),
              ]),
              20.verticalSpace,
              Row(children: [
                CardDesignInvoise(
                  description: ApplangKey.monthlyPaymentRate.tr(),
                  title: '₪510.0',
                ),
                20.horizontalSpace,
                CardDesignInvoise(
                  description: ApplangKey.theAmountOFTheDonation.tr(),
                  title: '₪150.0',
                ),
              ])
            ]),
          ),
          Container(
            margin: EdgeInsets.only(top: 35.r, right: 15.r),
            alignment: Alignment.centerRight,
            child: Text(
              "سجل الدفعات",
              style: TextStyle(fontSize: 18.sp),
            ),
          ),
          const HistoryPay(balance: "₪500.0", color: Colors.red),
          const HistoryPay(balance: "₪400.0"),
          const HistoryPay(balance: "₪540.0"),
          const HistoryPay(balance: "₪580.0"),
          const HistoryPay(balance: "₪510.0")
        ]),
      ),
    );
  }
}
