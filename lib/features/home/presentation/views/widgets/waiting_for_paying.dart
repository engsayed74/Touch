import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class WaitingForPaying extends StatelessWidget {
  const WaitingForPaying({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/receive.png'),
        const SizedBox(height: 32,),
        Text('لا يوجد طلبات متوفرة',style: AppTextStyle.bold14.copyWith(color: AppColors.primaryColor),),
      ],
    );
  }
}