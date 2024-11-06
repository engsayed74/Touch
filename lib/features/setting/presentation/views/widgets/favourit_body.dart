import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class FavouritBody extends StatelessWidget {
  const FavouritBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
               Text('لا يوجد مفضلة حتي الان',style: AppTextStyle.bold18.copyWith(color: AppColors.primaryColor  ),textAlign: TextAlign.center,)
      ],
    );
  }
}