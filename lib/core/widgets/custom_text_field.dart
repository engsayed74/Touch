import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hintText,
      required this.textInputType,
      this.prefixIcon,
      this.onSaved,
      this.obscureText = false, this.enabled, this.controller, });
  final String hintText;
  final TextInputType textInputType;
  final Widget? prefixIcon;
  final void Function(dynamic?)? onSaved;
  final bool obscureText;
  final bool? enabled;
  final TextEditingController? controller;
  @override
  Widget build(BuildContext context) {
    return Card(
       shadowColor: Colors.grey.withOpacity(.2),
      elevation: 5,
      child: TextFormField(
        controller: controller,
        enabled: enabled,
        textAlign: TextAlign.end,
        obscureText: obscureText,
        onSaved: onSaved,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'هذا الحقل مطلوب';
          }
          return null;
        },
        keyboardType: textInputType,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 16,vertical: 16),
          prefixIcon: prefixIcon,
          fillColor:Colors.white,
          hintStyle: AppTextStyle.regular16.copyWith(
            color: AppColors.primaryColor,
          ),
          hintText: hintText,
          filled: true,
          border: buildBorder(),
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: const BorderSide(
        width: 2,
        color: Color(0xFFE6E9E9),
      ),
    );
  }
}
