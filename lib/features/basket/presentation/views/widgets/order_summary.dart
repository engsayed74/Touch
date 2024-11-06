import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child:  Container(
        height: 350,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              Text(
                'ملخص الطلب',
                style:
                    AppTextStyle.bold18.copyWith(color: AppColors.primaryColor),
              ),
              const SizedBox(
                height: 8,
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
              const SizedBox(
                height: 8,
              ),
             const Divider(
                thickness: 1.5,
              ),
               const SizedBox(
                height: 8,
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
                                const SizedBox(
                                  width: 4,
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
              const SizedBox(
                height: 8,
              ),
            const  Divider(
                thickness: 1.5,
              ),
               const SizedBox(
                height: 8,
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
                                const SizedBox(
                                  width: 4,
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
              const SizedBox(
                height: 8,
              ),
            const  Divider(
                thickness: 1.5,
              ),
               const SizedBox(
                height: 8,
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
                                const SizedBox(
                                  width: 4,
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
              const SizedBox(
                height: 8,
              ),
             const Divider(
                thickness: 1.5,
              ),
               const SizedBox(
                height: 8,
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
                                const SizedBox(
                                  width: 4,
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
              const SizedBox(
                height: 8,
              ),
            const  Divider(
                thickness: 1.5,
              ),
               const SizedBox(
                height: 8,
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
              const SizedBox(
                height: 8,
              ),
           
            ],
          ),
        ),
      ),
    );
  }
}
