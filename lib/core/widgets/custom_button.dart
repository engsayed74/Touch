import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed, required this.text});
  final VoidCallback onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: TextButton(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              16,
            ),
          ),
          backgroundColor: AppColors.primaryColor,
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: AppTextStyle.regular20.copyWith(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
