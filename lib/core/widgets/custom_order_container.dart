import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class CustomOrderContainer extends StatelessWidget {
  final String name;
  final bool isSelected;
  final VoidCallback onTap;

  const CustomOrderContainer({
    super.key,
    required this.name,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shadowColor: Colors.grey.withOpacity(.2),
        elevation: 5,
        child: Container(
          width: 90,
          height: 43,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey.withOpacity(.2),width: 1,
            ),
            color: isSelected ? AppColors.primaryColor : Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Center(
            child: Text(
              name,
              style: AppTextStyle.regular11.copyWith(
                color: isSelected ? Colors.white : AppColors.primaryColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
