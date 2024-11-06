import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class CustomDropDownSize extends StatefulWidget {
  const CustomDropDownSize({super.key});

  @override
  State<CustomDropDownSize> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownSize> {
  // القائمة التي تحتوي على الأسماء
  final List<String> names = ['S', 'M', 'L', 'XL', 'XXL'];

  // المتغير لتحديد الاسم المختار
  String? selectedName = 'XL';

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        width: 50,
        height: 40,
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
