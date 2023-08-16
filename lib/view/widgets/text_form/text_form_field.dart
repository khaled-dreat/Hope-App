part of "../../../utils/import/app_import.dart";

class CustomFormField extends StatefulWidget {
  const CustomFormField(
      {super.key,
      this.initValue,
      this.keybordType,
      this.isPass = false,
      this.hint,
      this.txtLabel,
      this.txtHelper,
      this.validator,
      this.onSaved,
      this.onChanged,
      this.prIcon,
      this.suIcon});
  final String? initValue;
  final TextInputType? keybordType;
  final bool isPass;
  // decoration
  final String? hint;
  final String? txtLabel;
  final String? txtHelper;
  final IconData? prIcon;
  final void Function(String)? onChanged;
  final void Function(String?)? onSaved;
  final IconData? suIcon;
  final String? Function(String?)? validator;

  @override
  State<CustomFormField> createState() => _CustomFormFieldState();
}

class _CustomFormFieldState extends State<CustomFormField> {
  FocusNode focusNode = FocusNode();
  @override
  void initState() {
    super.initState();
    focusNode.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    ControllerAuth pAuth = Provider.of<ControllerAuth>(context);

    return TextFormField(
      initialValue: widget.initValue,
      keyboardType: widget.keybordType,
      cursorColor: AppTheme.colorAuth(context),
      obscureText: widget.isPass,
      obscuringCharacter: "*",
      textCapitalization: TextCapitalization.none,
      validator: widget.validator,
      onSaved: widget.onSaved,
      onChanged: widget.onChanged,
      decoration: InputDecoration(
        prefixIcon: widget.prIcon != null
            ? Icon(
                widget.prIcon,
                color: focusNode.hasFocus
                    ? AppTheme.iconColorTheme(context)
                    : AppColors.bgGrey,
              )
            : null,
        suffixIcon: widget.suIcon != null
            ? IconButton(
                onPressed: () => pAuth.changIcon(),
                icon: Icon(widget.suIcon),
                color: AppTheme.iconColorTheme(context))
            : null,
        hintText: widget.hint?.tr(),
        labelText: widget.txtLabel?.tr(),
        helperMaxLines: 2,
        helperText: widget.txtHelper?.tr(),
        labelStyle: styleLabel(context),
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDime.lg.r),
          borderSide: BorderSide(color: AppTheme.colorAuth(context), width: 2),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDime.lg.r),
          borderSide: BorderSide(color: AppTheme.colorAuth(context)),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDime.lg.r),
          borderSide: BorderSide(color: AppTheme.borderErrorTheme(context)),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppDime.lg.r),
          borderSide: BorderSide(color: AppTheme.borderErrorTheme(context)),
        ),
      ),
    );
  }

  TextStyle? styleLabel(BuildContext context) {
    return AppTheme.h6(context)
        ?.copyWith(fontWeight: FontWeight.w700, color: AppColors.bgBlack);
  }
}
