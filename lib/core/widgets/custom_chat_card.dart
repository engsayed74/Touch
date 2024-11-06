import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class CustomChatCard extends StatelessWidget {
  const CustomChatCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shadowColor: Colors.grey.withOpacity(.2),
      elevation: 5,
      child: Container(
        height: 90,
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey.withOpacity(.2), width: 1),
        ),
        child: Stack(
          children: [
            Positioned(
              right: 0,
              top: 0,
              child: Image.asset(
                'assets/images/woman.png',
                fit: BoxFit.cover,
                width: 80,
                height: 70,
              ),
            ),
            const Positioned(
              right: 80,
              top: 0,
              bottom: 0,
              child: VerticalDivider(
                thickness: 1,
                color: AppColors.primaryColor,
              ),
            ),
            Positioned(
                top: 0,
                right: 100,
                child: Text(
                  'سيليا',
                  style: AppTextStyle.regular18
                      .copyWith(color: AppColors.primaryColor),
                )),
            Positioned(
                bottom: 0,
                right: 180,
                child: Text(
                  '11-10-2022',
                  style: AppTextStyle.regular14
                      .copyWith(color: AppColors.chatColor),
                )),
            Positioned(
                bottom: 0,
                right: 100,
                child: Text('04:43:47',
                    style: AppTextStyle.regular14
                        .copyWith(color: AppColors.chatColor))),
          ],
        ),
      ),
    );
  }
}
