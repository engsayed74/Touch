import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class TermsConditionsBody extends StatefulWidget {
  const TermsConditionsBody({super.key});

  @override
  State<TermsConditionsBody> createState() => _TermsConditionsBodyState();
}

class _TermsConditionsBodyState extends State<TermsConditionsBody> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(height: 32),
            Text(
              'الشروط والأحكام',
              style:
                  AppTextStyle.bold18.copyWith(color: AppColors.primaryColor),
            ),
            const SizedBox(height: 24),
            Container(
              padding: const EdgeInsets.all(16),
              height: 216,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.withOpacity(.3),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Text(
                'يجب أن لا تكشف عن رقم التعريف الشخصي الخاص بك إلى أي شخص بما في ذلك الأصدقاء أو أفراد العائلة أو أي تاجر. يجب ألا تكتب رقم التعريف الشخصي الخاص بك في أي مكان. يجب عدم استخدام رقم التعريف الشخصي إذا كان شخص آخر يمكن أن يراك وأنت تُدخله. يجب أن تلتزم بالإجراءات الأمنية التي نخبرك بها من وقت لآخر',
                textAlign: TextAlign.end,
                style: AppTextStyle.regular16
                    .copyWith(color: AppColors.orderColor),
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'موافقة على الشروط والأحكام',
                  style: AppTextStyle.bold16
                      .copyWith(color: AppColors.primaryColor),
                ),
                Checkbox(
                  activeColor: AppColors.primaryColor,
                  side: const BorderSide(
                    color: Color(0xff707070),
                    width: 1.5,
                    style: BorderStyle.solid,
                  ),
                  value: isChecked,
                  onChanged: (value) {
                    setState(() {
                      isChecked = value ?? false;
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 200,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      foregroundColor: Colors.white,
                      backgroundColor:
                          isChecked ? AppColors.primaryColor : Colors.grey,
                    ),
                    onPressed: () {
                      isChecked
                          ? Navigator.pop(context)
                          : showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                    title: Text(
                                      'يجب عليك قبول الشروط والأحكام',
                                      style: AppTextStyle.regular16.copyWith(
                                          color: AppColors.primaryColor),
                                      textAlign: TextAlign.center,
                                    ),
                                  ));
                    },
                    child:  Text(
                      'حفظ',
                      style: AppTextStyle.regular18,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
