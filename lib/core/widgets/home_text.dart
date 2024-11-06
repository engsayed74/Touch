import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class HomeText extends StatelessWidget {
  const HomeText({super.key, required this.title});
final String title;
  @override
  Widget build(BuildContext context) {
    return  
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('الكل',style: AppTextStyle.bold16.copyWith(color: AppColors.primaryColor),),
        Text(title,style: AppTextStyle.bold18.copyWith(color: AppColors.primaryColor),),
      ],
    );
  }
}