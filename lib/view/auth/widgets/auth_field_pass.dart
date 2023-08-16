part of "../../../utils/import/app_import.dart";

class AuthFieldPass extends StatelessWidget {
  const AuthFieldPass({super.key, this.isconfirm = false});
  final bool isconfirm;
  @override
  Widget build(BuildContext context) {
    ControllerAuth pAuth = Provider.of<ControllerAuth>(context);

    return CustomFormField(
      prIcon: Icons.lock,
      suIcon: pAuth.icon,
      isPass: pAuth.isNotShowPass,
      validator: (value) {
        return isconfirm
            ? AppValidators.checkConfirmPass(value, pAuth.currentPass)
            : AppValidators.checkPass(value);
      },
      txtLabel: isconfirm ? ApplangKey.confirmPass : ApplangKey.pass,
      onChanged: !isconfirm ? pAuth.setCurrentPass : null,
      onSaved: pAuth.userAuth.setPass,
    );
  }
}
