import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class CustomDropDownButton extends StatefulWidget {
  const CustomDropDownButton({super.key});

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  // القائمة التي تحتوي على الأسماء
  final List<String> names = ['اختر', 'الاسم', 'الاعلي سعر', 'الاقل سعر'];

  // المتغير لتحديد الاسم المختار
  String? selectedName = 'اختر';

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.primaryColor, width: 1),
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
    );
  }
}
