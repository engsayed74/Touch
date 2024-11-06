import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

void alertDialogReport(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      title: Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: CircleAvatar(
            backgroundColor: Colors.grey.withOpacity(.2),
            child: const Icon(Icons.close, color: Colors.black),
          ),
        ),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextField(
            cursorColor: AppColors.primaryColor,
            textAlign: TextAlign.end,
            decoration: InputDecoration(
              contentPadding:const EdgeInsets.only(right: 16),
              hintText: 'نص البلاغ',
              hintStyle:
                  AppTextStyle.bold11.copyWith(color: AppColors.primaryColor),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(32.0),
                borderSide: const BorderSide(
                  width: .5,
                ),
              ),
            ),
          ),
        ],
      ),
      actions: [
        Align(
          alignment: Alignment.bottomCenter,
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: CircleAvatar(
              radius: 30,
              backgroundColor: AppColors.primaryColor,
              child: Text(
                ' ابلاغ',
                textAlign: TextAlign.center,
                style: AppTextStyle.regular14.copyWith(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    ),
  );
}
