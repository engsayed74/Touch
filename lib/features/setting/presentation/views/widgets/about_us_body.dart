import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class AboutUsBody extends StatelessWidget {
  const AboutUsBody({super.key});

  @override
/// `Placeholder` widget.
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
                 Text('لمسة تطبيق صمم بشغف وحب من قبل فريق سعودي',style: AppTextStyle.bold14.copyWith(color: AppColors.primaryColor  ),textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}