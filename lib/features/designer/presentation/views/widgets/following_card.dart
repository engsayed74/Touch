import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class FollowingCard extends StatelessWidget {
  const FollowingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        
        height: 150,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.white,
          //color: Colors.grey.withOpacity(.3),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              right: 0,
              bottom: 0,
              child: Image.asset(
                'assets/images/booking.png',
                width: 110,
                height: 120,
                fit: BoxFit.contain,
              ),
            ),
            Positioned(
              top: 20,
              right: 120,
              child: Text(
                ' : رقم الطلب',
                style:
                    AppTextStyle.bold14.copyWith(color: AppColors.orderColor),
              ),
            ),
             Positioned(
              top: 20,
              right: 210,
              child: Text(
                '#6695274',
                style:
                    AppTextStyle.regular14.copyWith(color: AppColors.primaryColor),
              ),
            ),

             Positioned(
              top: 50,
              right: 120,
              child: Text(
                ' :وقت الإنشاء',
                style:
                    AppTextStyle.bold14.copyWith(color: AppColors.orderColor),
              ),
            ),
             Positioned(
              top: 50,
              right: 210,
              child: Text(
                '2023-10-21',
                style:
                    AppTextStyle.regular14.copyWith(color: AppColors.primaryColor),
              ),
            ),
            Positioned(
              top: 50,
              right: 290,
              child: Text(
                '11:59',
                style:
                    AppTextStyle.regular14.copyWith(color: AppColors.primaryColor),
              ),
            ),
            Positioned(
              top: 50,
              right: 325,
              child: Text(
                'ص',
                style:
                    AppTextStyle.regular14.copyWith(color: AppColors.primaryColor),
              ),
            ),
            Positioned(
              top: 80,
              right: 120,
              child: Text(
                ' : حالة الطلب',
                style:
                    AppTextStyle.bold14.copyWith(color: AppColors.orderColor),
              ),
            ),
             Positioned(
              top: 80,
              right: 210,
              child: Text(
                'تم الشحن',
                style:
                    AppTextStyle.regular14.copyWith(color: AppColors.primaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
