import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';

import 'custom_text_field.dart';

class PasswordField extends StatefulWidget {
  const PasswordField({
    super.key,
    this.onSaved,
  });

  final void Function(dynamic)? onSaved;

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  bool obscureText = true;
  @override
  Widget build(BuildContext context) {
    return CustomTextFormField(
      obscureText: obscureText,
      onSaved: widget.onSaved,
      prefixIcon: GestureDetector(
        onTap: () {
          obscureText = !obscureText;
          setState(() {});
        },
        child: obscureText
            ? const Icon(
                Icons.remove_red_eye,
                color: Color(0xffC9CECF),
              )
            : const Icon(
                Icons.visibility_off,
                color: AppColors.primaryColor,
              ),
      ),
      hintText: 'كلمة السر',
      textInputType: TextInputType.visiblePassword,
    );
  }
}
