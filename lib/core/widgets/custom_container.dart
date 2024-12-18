import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.colors, required this.text});
  final List<Color> colors;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: colors),
        borderRadius: const BorderRadius.horizontal(
          left: Radius.circular(16),
        ),
      ),
      child: Text(
        text,
        style: AppTextStyle.regular11.copyWith(color: Colors.white),
      ),
    );
  }
}
