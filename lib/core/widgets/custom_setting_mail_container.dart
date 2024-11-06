import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class CustomSettingMAilContainer extends StatelessWidget {
  const CustomSettingMAilContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: AppColors.primaryColor,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'اشترك بالقائمة البريدية',
                              style: AppTextStyle.bold16
                                  .copyWith(color: AppColors.primaryColor),
                              textAlign: TextAlign.end,
                            ),
                            const SizedBox(
                              width: 4,
                            ),
                            const Icon(
                              Icons.local_post_office_outlined,
                              color: AppColors.primaryColor,
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          'ليصلك كل جديد ضع بريدك الالكتروني',
                          style: AppTextStyle.regular16
                              .copyWith(color: AppColors.primaryColor),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16),
                          child: Container(
                            height: 50,
                            width: double.infinity,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: AppColors.innerColor, width: 1.5),
                                borderRadius: const BorderRadius.only(
                                    topRight: Radius.circular(8),
                                    bottomRight: Radius.circular(8))),
                            child: Stack(
                              children: [
                                Positioned(
                                  child: Container(
                                    height: 50,
                                    width: 90,
                                    decoration: const BoxDecoration(
                                        color: AppColors.primaryColor,
                                        borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(8),
                                            bottomRight: Radius.circular(8))),
                                    child: Center(
                                        child: Text(
                                      'اشترك',
                                      style: AppTextStyle.regular16
                                          .copyWith(color: Colors.white),
                                    )),
                                  ),
                                ),
                                const Positioned(
                                  top: 0,
                                  bottom: 0,
                                  right: 0,
                                  child: SizedBox(
                                    width: 200,
                                    child: TextField(
                                      textAlign: TextAlign.end,
                                      keyboardType: TextInputType.emailAddress,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                      ],
                    ),
                  );
  }
}