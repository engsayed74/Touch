import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class AboutDeveloperBody extends StatelessWidget {
  const AboutDeveloperBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
           const SizedBox(height: 16,),
                 SizedBox(
                    width: 204,
                    height: 170,
                    child: Image.asset(
                      'assets/images/logo_1.png',
                      fit: BoxFit.contain,
                    ),
                 ),
                 const SizedBox(height: 32,),
                 Text('لمسة',style: AppTextStyle.bold22.copyWith(color: AppColors.primaryColor  ),textAlign: TextAlign.center,),
                 const SizedBox(height: 16,),
                                Text('اصدار التطبيق : 1.0.0',style: AppTextStyle.regular18.copyWith(color: AppColors.secondaryColor  ),textAlign: TextAlign.center,),
                 const SizedBox(height: 16,),
      
                 Text('تصميم وبرمجة',style: AppTextStyle.regular18.copyWith(color: AppColors.secondaryColor  ),textAlign: TextAlign.center,),
                 const SizedBox(height: 16,),
      
                 Text('اتمام لتقنية نظم المعلومات',style: AppTextStyle.regular18.copyWith(color: AppColors.secondaryColor  ),textAlign: TextAlign.center,),
                 const SizedBox(height: 16,),
                 Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('920017221',style: AppTextStyle.bold22.copyWith(color: AppColors.primaryColor  ),textAlign: TextAlign.center,),
                    const SizedBox(width: 14,),
                    Image.asset('assets/images/whatsapp.png',width: 30,height: 30,)
                  ],
                 ),
      
        ],
      ),
    );;
  }
}