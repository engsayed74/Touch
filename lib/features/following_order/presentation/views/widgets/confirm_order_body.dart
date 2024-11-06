import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';
import 'package:touch_app/core/widgets/custom_elevated_button.dart';

class ConfirmOrderBody extends StatelessWidget {
  const ConfirmOrderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/images/thin.png',
            width: 150,
            height: 150,
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            'تم تاكيد الطلب بنجاح',
            style: AppTextStyle.bold18.copyWith(color: AppColors.primaryColor),
          ),
          const SizedBox(
            height: 64,
          ),
          CustomElevatedButton(
            text: 'تتبع الطلب',
            onTap: () {
              Navigator.pushNamed(context, 'followingOrderBody');
            },
          ),
        ],
      ),
    );
  }
}
