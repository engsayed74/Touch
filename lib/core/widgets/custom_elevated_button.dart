import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton({super.key, required this.text, required this.onTap});
final String text ;
final void Function() onTap ;
  @override
  Widget build(BuildContext context) {
    return  Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          foregroundColor: Colors.white,
                          backgroundColor: AppColors.primaryColor),
                      onPressed: () {
                        onTap();
                        },
                      child:  Text(
                        text,
                        style: AppTextStyle.bold22,
                      ),
                    ),
                  ),
                ),
              ],
            );
  }
}