import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class PaymentOrderSummary extends StatelessWidget {
  const PaymentOrderSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return  Card(
              child: Container(
                decoration: BoxDecoration(
                                color: Colors.white,
              
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: Colors.grey.withOpacity(.2), width: .5),
              ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
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
                                        '100.00',
                                        style: AppTextStyle.bold14
                                            .copyWith(color: AppColors.primaryColor),
                                      ),
                                    ],
                                  ),
                        Text(
                          ' : اجمالي السلة ',
                          style: AppTextStyle.bold14
                              .copyWith(color: AppColors.primaryColor),
                        ),
                      ],
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
                                        '150.00',
                                        style: AppTextStyle.bold14
                                            .copyWith(color: AppColors.primaryColor),
                                      ),
                                    ],
                                  ),
                                   Text(
                          ' : سعر الضريبة ',
                          style: AppTextStyle.bold14
                              .copyWith(color: AppColors.primaryColor),
                        ),
                    ],
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
                                        '18.00',
                                        style: AppTextStyle.bold14
                                            .copyWith(color: AppColors.primaryColor),
                                      ),
                                    ],
                                  ),
                                   Text(
                          ' : رسوم الشحن ',
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
                                        '133.00',
                                        style: AppTextStyle.bold14
                                            .copyWith(color: AppColors.primaryColor),
                                      ),
                                    ],
                                  ),
                                   Text(
                          ' : اجمالي التكلفة ',
                          style: AppTextStyle.bold14
                              .copyWith(color: AppColors.primaryColor),
                        ),
                    ],
                  ),
                  
                  
                    
                    ],
                  ),
                ),
              ),
            );

  }
}