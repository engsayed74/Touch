import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class PageViewItem extends StatelessWidget {
  const PageViewItem({super.key, required this.image, required this.title});
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
              width: 290,
              height: 242,
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              )),
          const SizedBox(
            height: 16,
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style:
                AppTextStyle.regular20.copyWith(color: AppColors.secondaryColor),
          ),
        ],
      ),
    );
  }
}
