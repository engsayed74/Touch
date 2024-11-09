import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';
import 'package:touch_app/features/basket/presentation/views/widgets/custom_drop_dowen_number.dart';
import 'package:touch_app/features/basket/presentation/views/widgets/custom_drop_dowen_size.dart';

class BasketCard extends StatelessWidget {
  const BasketCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 150.h,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
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
                'assets/images/fruit.png',
                width: 120,
                height: 120,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                padding: const EdgeInsets.all(2),
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.red, width: 1.5)),
                child: const Icon(
                  Icons.close,
                ),
              ),
            ),
            Positioned(
              top: 3,
              left: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'ريال',
                    style: AppTextStyle.bold18
                        .copyWith(color: AppColors.primaryColor),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    '20',
                    style: AppTextStyle.bold18
                        .copyWith(color: AppColors.primaryColor),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 3,
              right: 150,
              child: Text(
                'جاكت',
                style:
                    AppTextStyle.bold18.copyWith(color: AppColors.primaryColor),
              ),
            ),
            Positioned(
              right: 150,
              top: 50,
              left: 0,
              child: Text(
                'جاكت مبطن فرو من احسن الخامات واستخدام احسن الماكينات للصناعة',
                maxLines: 2,
                style: AppTextStyle.bold11
                    .copyWith(color: AppColors.secondaryColor),
                textAlign: TextAlign.end,
              ),
            ),
            const Positioned(
                bottom: 0, right: 150, child: CustomDropDownSize()),
            Positioned(
              bottom: 3,
              right: 215,
              child: Container(
                width: 40.w,
                height: 40.h,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.primaryColor),
              ),
            ),
            const Positioned(
                bottom: 0, right: 265, child: CustomDropDownNumber()),
          ],
        ),
      ),
    );
  }
}
