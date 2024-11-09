import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class CustomDropDownNumber extends StatefulWidget {
  const CustomDropDownNumber({super.key});

  @override
  State<CustomDropDownNumber> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownNumber> {
  // القائمة التي تحتوي على الأسماء
  final List<String> names = ['1', '2', '3', '4', '5', '6','7','8','9','10'];

  // المتغير لتحديد الاسم المختار
  String? selectedName = '1';

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 45.w,
        height: 40.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4),
        ),
        child: Align(
          alignment: AlignmentDirectional.centerEnd,
          child: DropdownButton<String>(
            borderRadius: BorderRadius.circular(16),
            style: AppTextStyle.bold14..copyWith(color: AppColors.primaryColor),
            value: selectedName,
            underline: const SizedBox(),
            alignment: AlignmentDirectional.centerEnd,
            onChanged: (String? newValue) {
              setState(() {
                selectedName = newValue!;
              });
            },
            items: names.map<DropdownMenuItem<String>>((String name) {
              return DropdownMenuItem<String>(
                value: name,
                child: Align(
                    alignment: AlignmentDirectional.centerEnd,
                    child: Text(
                      name,
                      style: const TextStyle(color: AppColors.primaryColor),
                      textAlign: TextAlign.right,
                    )),
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
