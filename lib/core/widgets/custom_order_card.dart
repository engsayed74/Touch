import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class CustomOrderCard extends StatelessWidget {
  const CustomOrderCard({super.key});

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
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * .36,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ص',
                        style: AppTextStyle.regular14
                            .copyWith(color: AppColors.chatColor),
                      ),
                      Text(
                        '11:59',
                        style: AppTextStyle.regular14
                            .copyWith(color: AppColors.chatColor),
                      ),
                      Text(
                        '2023-10-21',
                        style: AppTextStyle.regular14
                            .copyWith(color: AppColors.chatColor),
                      ),
                    ],
                  ),
                ),
                Text(
                  '#6695274',
                  style: AppTextStyle.bold14
                      .copyWith(color: AppColors.primaryColor),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * .13,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'ريال',
                        style: AppTextStyle.bold11
                            .copyWith(color: AppColors.primaryColor),
                      ),
                      Text(
                        '400',
                        style: AppTextStyle.bold11
                            .copyWith(color: AppColors.primaryColor),
                      ),
                    ],
                  ),
                ),
                Text(
                  'مى أحمد',
                  style: AppTextStyle.bold14
                      .copyWith(color: AppColors.primaryColor),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
