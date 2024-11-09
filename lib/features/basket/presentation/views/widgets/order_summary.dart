import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child:  Container(
        height: 350.h,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
               SizedBox(
                height: 16.h,
              ),
              Text(
                'ملخص الطلب',
                style:
                    AppTextStyle.bold18.copyWith(color: AppColors.primaryColor),
              ),
               SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '1',
                    style: AppTextStyle.bold14
                        .copyWith(color: AppColors.primaryColor),
                  ),
                  Text(
                    ' : عدد المنتجات',
                    style: AppTextStyle.bold14
                        .copyWith(color: AppColors.primaryColor),
                  ),
                ],
              ),
               SizedBox(
                height: 8.h,
              ),
             const Divider(
                thickness: 1.5,
              ),
                SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'ريال',
                                  style: AppTextStyle.bold14
                                      .copyWith(color: AppColors.primaryColor),
                                ),
                                 SizedBox(
                                  width: 4.w
                                ),
                                Text(
                                  '20.00',
                                  style: AppTextStyle.bold14
                                      .copyWith(color: AppColors.primaryColor),
                                ),
                              ],
                            ),
                  Text(
                    ' : سعر المنتجات ',
                    style: AppTextStyle.bold14
                        .copyWith(color: AppColors.primaryColor),
                  ),
                ],
              ),
               SizedBox(
                height: 8.h,
              ),
            const  Divider(
                thickness: 1.5,
              ),
                SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'ريال',
                                  style: AppTextStyle.bold14
                                      .copyWith(color: AppColors.primaryColor),
                                ),
                                 SizedBox(
                                  width: 4.w,
                                ),
                                Text(
                                  '3.00',
                                  style: AppTextStyle.bold14
                                      .copyWith(color: AppColors.primaryColor),
                                ),
                              ],
                            ),
                  Text(
                    ' : سعر الضريبة',
                    style: AppTextStyle.bold14
                        .copyWith(color: AppColors.primaryColor),
                  ),
                ],
              ),
                SizedBox(
                height: 8.h,
              ),
            const  Divider(
                thickness: 1.5,
              ),
                SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'ريال',
                                  style: AppTextStyle.bold14
                                      .copyWith(color: AppColors.primaryColor),
                                ),
                                 SizedBox(
                                  width: 4.w,
                                ),
                                Text(
                                  '18',
                                  style: AppTextStyle.bold14
                                      .copyWith(color: AppColors.primaryColor),
                                ),
                              ],
                            ),
                  Text(
                    ' : رسوم الشحن',
                    style: AppTextStyle.bold14
                        .copyWith(color: AppColors.primaryColor),
                  ),
                ],
              ),
               SizedBox(
                height: 8.h,
              ),
             const Divider(
                thickness: 1.5,
              ),
               SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'ريال',
                                  style: AppTextStyle.bold14
                                      .copyWith(color: AppColors.primaryColor),
                                ),
                                 SizedBox(
                                  width: 4.w,
                                ),
                                Text(
                                  '41.00',
                                  style: AppTextStyle.bold14
                                      .copyWith(color: AppColors.primaryColor),
                                ),
                              ],
                            ),
                  Text(
                    ' : اجمالي التكلفة',
                    style: AppTextStyle.bold14
                        .copyWith(color: AppColors.primaryColor),
                  ),
                ],
              ),
               SizedBox(
                height: 8.h,
              ),
            const  Divider(
                thickness: 1.5,
              ),
                SizedBox(
                height: 8.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'بانتظار الدفع',
                    style: AppTextStyle.bold14
                        .copyWith(color: AppColors.primaryColor),
                  ),
                  Text(
                    ' : حالة الطلب',
                    style: AppTextStyle.bold14
                        .copyWith(color: AppColors.primaryColor),
                  ),
                ],
              ),
                SizedBox(
                height: 8.h,
              ),
           
            ],
          ),
        ),
      ),
    );
  }
}
