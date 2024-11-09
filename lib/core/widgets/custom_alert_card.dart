import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class CustomAlertCard extends StatelessWidget {
  const CustomAlertCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
       shadowColor: Colors.grey.withOpacity(.2),
      elevation: 5,
      child: Container(
        height: 90.h,
        width: double.infinity,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey.withOpacity(.2), width: 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '11:31',
                  style:
                      AppTextStyle.bold14.copyWith(color: AppColors.alertColor),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.33,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '#6695274',
                        style: AppTextStyle.regular11
                            .copyWith(color: AppColors.alertColor),
                      ),
                      Text(
                        'Touch',
                        style: AppTextStyle.regular16
                            .copyWith(color: AppColors.navyColor),
                      )
                    ],
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Nov/2023/09',
                  style:
                      AppTextStyle.bold14.copyWith(color: AppColors.alertColor),
                ),
                Text(
                  'سيتم توصيل طلبك خلال أسبوع',
                  style:
                      AppTextStyle.bold11.copyWith(color: AppColors.alertColor),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
