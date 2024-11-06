import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key,
    required this.text,
    required this.image,
    this.onButtonPressed,
  });
  final String text;
  final String image;
  final void Function()? onButtonPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onButtonPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: Text(
                '$text',
                style: AppTextStyle.regular18.copyWith(color: AppColors.primaryColor),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8), // Adjust thickness of the border
            decoration: BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey.withOpacity(.2), width: 1.5)),
              child: Image.asset('$image',width: 15,height: 15,color: AppColors.primaryColor,),
            )
          ],
        ));
  }
}
