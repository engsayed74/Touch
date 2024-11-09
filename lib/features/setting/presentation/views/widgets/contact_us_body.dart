import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';
import 'package:touch_app/core/widgets/custom_text_field.dart';

class ContactUsBody extends StatelessWidget {
  const ContactUsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 204,
              height: 170,
              child: Image.asset(
                'assets/images/logo_1.png',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'تواصل معنا عبر',
              style: AppTextStyle.bold18.copyWith(color: AppColors.primaryColor),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 24,
            ),
          const  Icon(
              Icons.phone,
              color: Colors.blue,
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              'او ارسل رسالة لادارة التطبيق',
              style: AppTextStyle.bold18.copyWith(color: AppColors.primaryColor),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Text(
                'عنوان الرسالة',
                style: AppTextStyle.bold18.copyWith(color: AppColors.primaryColor),
                textAlign: TextAlign.end,
              ),
            ),
            const SizedBox(height: 16,),
           const CustomTextFormField(hintText: '', textInputType: TextInputType.name),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: Text(
                'محتوي الرسالة',
                style: AppTextStyle.bold18.copyWith(color: AppColors.primaryColor),
                textAlign: TextAlign.end,
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const CustomTextFormField(hintText: '', textInputType: TextInputType.name),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 250,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        padding: const EdgeInsets.symmetric(vertical: 12),
                        foregroundColor: Colors.white,
                        backgroundColor: AppColors.primaryColor),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child:  Text(
                      'ارسال',
                      style: AppTextStyle.bold22,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height:
            32)
          ],
        ),
      ),
    );
  }
}
