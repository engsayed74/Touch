import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class CustomText extends StatelessWidget {
  const CustomText({super.key, required this.text});
final  String text;
  @override
  Widget build(BuildContext context) {
    return Text(
      
      text,
      style: AppTextStyle.regular18.copyWith(color: AppColors.secondaryColor),
      textAlign: TextAlign.right,
      );
  }
}