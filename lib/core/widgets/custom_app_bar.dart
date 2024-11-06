import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';
import 'package:touch_app/features/auth/presentation/views/login_view.dart';

AppBar buildAppBar(
  context, {
  required String title,
  bool showBackButton = false,
}) {
  return AppBar(
    backgroundColor: Colors.white,
    actions: [
      Padding(
          padding: const EdgeInsets.only(top: 24, right: 16),
          child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_forward,
                color: AppColors.primaryColor,
              )))
    ],
    leading: Visibility(
      visible: showBackButton,
      child: GestureDetector(),
    ),
    centerTitle: true,
    title: Padding(
      padding: const EdgeInsets.only(top: 24),
      child: Text(
        title,
        textAlign: TextAlign.center,
        style: AppTextStyle.bold18.copyWith(color: AppColors.primaryColor),
      ),
    ),
  );
}
