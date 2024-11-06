import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class DiscountCode extends StatelessWidget {
  const DiscountCode({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey.withOpacity(.2), width: .5),
        ),
        height: 150,
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'كود الخصم ',
              style:
                  AppTextStyle.bold18.copyWith(color: AppColors.primaryColor),
            ),
            const SizedBox(
              height: 32,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(color: AppColors.innerColor, width: 1.5),
                  borderRadius: const BorderRadius.only(
                      topRight: Radius.circular(8),
                      bottomRight: Radius.circular(8))),
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: 50,
                      width: 120,
                      decoration: const BoxDecoration(
                          color: AppColors.primaryColor,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(8),
                              bottomRight: Radius.circular(8))),
                      child: Center(
                          child: Text(
                        'تحقق',
                        style:
                            AppTextStyle.bold16.copyWith(color: Colors.white),
                      )),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    bottom: 0,
                    right: 0,
                    child: SizedBox(
                      width: 200,
                      child: TextField(
                        style: AppTextStyle.regular16
                            .copyWith(color: AppColors.hintColor),
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10,
                              horizontal: 10), // التحكم في موضع النص

                          hintText: 'ادخل كود الخصم',
                          hintStyle: AppTextStyle.regular16
                              .copyWith(color: AppColors.primaryColor),
                          border: InputBorder.none,
                        ),
                        textAlign: TextAlign.right,
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
