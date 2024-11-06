import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';
import 'package:touch_app/core/widgets/custom_text_button.dart';

class SetUpBody extends StatelessWidget {
  const SetUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        const SizedBox(
          height: 16,
        ),
        Image.asset(
          'assets/images/logo_3.png',
          width: 204,
          height: 170,
          fit: BoxFit.contain,
        ),
        const SizedBox(
          height: 32,
        ),
        CustomTextButton(
          text: 'العناوين ',
          image: 'assets/images/location_on_small.png',
          onButtonPressed: () {},
        ),
        const Divider(
          thickness: .3,
        ),
        CustomTextButton(
          text: 'تعديل البيانات ',
          image: 'assets/images/edit.png',
          onButtonPressed: () {},
        ),
        const Divider(
          thickness: .3,
        ),
        CustomTextButton(
          text: 'تغيير اللغة ',
          image: 'assets/images/earth.png',
          onButtonPressed: () {},
        ),
        const Divider(
          thickness: .3,
        ),
        const SizedBox(
          height: 48,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(
            'assets/images/tiktok_icon.png',
            width: 20,
            height: 20,
          ),
          const SizedBox(
            width: 8,
          ),
          Image.asset(
            'assets/images/instagram_icon.png',
            width: 20,
            height: 20,
          ),
          const SizedBox(
            width: 8,
          ),
          Image.asset(
            'assets/images/facebook_icon.png',
            width: 20,
            height: 20,
          ),
          const SizedBox(
            width: 8,
          ),
          Image.asset(
            'assets/images/twitter.png',
            width: 20,
            height: 20,
          ),
        ]),
        const SizedBox(
          height: 32,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '1 :',
              style: AppTextStyle.bold16.copyWith(color: AppColors.innerColor),
            ),
            Text('  الإصدار',
                style:
                    AppTextStyle.bold16.copyWith(color: AppColors.innerColor)),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              ' كل الحقوق محفوظة',
              style: AppTextStyle.bold16.copyWith(color: AppColors.innerColor),
            ),
            Text('  2023 © ',
                style:
                    AppTextStyle.bold16.copyWith(color: AppColors.innerColor)),
          ],
        ),
        const SizedBox(
          height: 32,
        )
      ]),
    );
  }
}
