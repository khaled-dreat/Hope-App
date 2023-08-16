part of "../../../utils/import/app_import.dart";

class AuthFieldEmail extends StatelessWidget {
  const AuthFieldEmail({super.key});

  @override
  Widget build(BuildContext context) {
    ControllerAuth pAuth = Provider.of<ControllerAuth>(context);
//todo:icon refactor
    return CustomFormField(
      prIcon: Icons.mail,
      //     hint: ApplangKey.email,
      txtLabel: ApplangKey.email,
      keybordType: TextInputType.emailAddress,
      validator: AppValidators.checkEmail,
      onSaved: pAuth.userAuth.setEmail,
    );
  }
}
