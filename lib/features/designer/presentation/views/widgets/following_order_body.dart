import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';
import 'package:touch_app/core/widgets/custom_elevated_button.dart';
import 'package:touch_app/core/widgets/custom_rating_bar.dart';
import 'package:touch_app/features/designer/presentation/views/widgets/following_card.dart';

class FollowingOrderBody extends StatelessWidget {
  const FollowingOrderBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            const FollowingCard(),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'تم استلام طلبك',
                  style: AppTextStyle.bold16
                      .copyWith(color: AppColors.primaryColor),
                ),
                const SizedBox(
                  width: 16,
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Image.asset(
                    'assets/images/inbox.png',
                    width: 100.w,
                    height: 50.h,
                  ),
                ),
                Checkbox(
                  value: true,
                  onChanged: (value) => value = true,
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                ),
              ],
            ),
             SizedBox(
              height: 8.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  ' تم شحن طلبك',
                  style: AppTextStyle.bold16
                      .copyWith(color: AppColors.primaryColor),
                ),
                 SizedBox(
                  width: 24.w,
                ),
                Image.asset(
                  'assets/images/fast_delivery.png',
                  width: 100.w,
                  height: 50.h,
                ),
                Checkbox(
                  value: true,
                  onChanged: (value) => value = true,
                  activeColor: Colors.green,
                  checkColor: Colors.white,
                ),
              ],
            ),
             SizedBox(
              height: 8.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'تم التسليم',
                  style: AppTextStyle.bold16
                      .copyWith(color: AppColors.primaryColor),
                ),
                const SizedBox(
                  width: 24,
                ),
                Image.asset(
                  'assets/images/receive.png',
                  width: 100.w,
                  height: 50.h,
                ),
                Checkbox(
                  value: false,
                  onChanged: (value) => value = false,
                ),
              ],
            ),
              SizedBox(
              height: 32.h,
            ),
            CustomElevatedButton(
              text: 'تقييم الطلب',
              onTap: () => showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    content: Container(
                      height: 200.h,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            ' تقييم الطلب',
                            style: AppTextStyle.bold18
                                .copyWith(color: AppColors.primaryColor),
                          ),
                          Text(
                            ' يرجي تقييم الطلب',
                            style: AppTextStyle.regular18
                                .copyWith(color: AppColors.primaryColor),
                          ),
                          const CustomRatingBar(),
                        ],
                      ),
                    ),
                    actions: [
                      CustomElevatedButton(
                          text: 'ارسال', onTap: () => Navigator.pop(context)),
                    ],
                  );
                },
              ),
            ),
           SizedBox(
              height: 16.h,
            ),
            CustomElevatedButton(text: 'اعادة الطلب', onTap: () => null),
             SizedBox(
              height: 16.h,
            ),
            CustomElevatedButton(text: 'استرجاع', onTap: () => null),
             SizedBox(
              height: 32.h,
            ),
            Card(
              child: Container(
                width: double.infinity,
                height: 70.h,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border:
                      Border.all(color: Colors.grey.withOpacity(.2), width: 1),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Text(
                        'المملكة العربية السعودية , منطقة مكة ',
                        style: AppTextStyle.regular11
                            .copyWith(color: AppColors.orderColor),
                      ),
                    ),
                    Image.asset(
                      'assets/images/location.png',
                      color: AppColors.primaryColor,
                      width: 30.w,
                      height: 30.h,
                    )
                  ],
                ),
              ),
            ),
             SizedBox(
              height: 32.h,
            ),
          ],
        ),
      ),
    );
  }
}
