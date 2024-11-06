import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class SizeContainer extends StatefulWidget {
  const SizeContainer({super.key});

  @override
  State<SizeContainer> createState() => _SizeContainerState();
}

class _SizeContainerState extends State<SizeContainer> {
  int selectedIndex = -1; // متغير لتعقب الـ Container المحدد
  String selectedSizeText = ''; // متغير لتخزين النص المحدد

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (selectedIndex !=
                -1) // إظهار الدائرة والنص الكامل فقط إذا تم اختيار كونتينر
              CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(.2),
                child: Text(
                  '5',
                  style: AppTextStyle.bold12
                      .copyWith(color: AppColors.primaryColor),
                ),
              ),
            const SizedBox(
              width: 8,
            ),
            if (selectedIndex !=
                -1) // إظهار النص الكامل فقط إذا تم اختيار كونتينر
              Text(
                ' $selectedSizeText     : عدد القطع المتوفرة ',
                style:
                    AppTextStyle.bold14.copyWith(color: AppColors.primaryColor),
              ),
            const SizedBox(
              width: 10,
            ),
            Text(
              'المقاس',
              style:
                  AppTextStyle.bold18.copyWith(color: AppColors.primaryColor),
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, 'special_size'),
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Container(
                      height: 40,
                      width: 110,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border:
                            Border.all(color: AppColors.primaryColor, width: 1),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'مقاسات خاصة',
                          style: AppTextStyle.bold11
                              .copyWith(color: AppColors.primaryColor),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 0;
                      selectedSizeText = 'L';
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 40,
                    decoration: BoxDecoration(
                      color: selectedIndex == 0
                          ? AppColors.passwordColor
                          : Colors.white,
                      border:
                          Border.all(color: AppColors.primaryColor, width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'L',
                        style: AppTextStyle.bold11
                            .copyWith(color: AppColors.primaryColor),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 1;
                      selectedSizeText = 'M';
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 40,
                    decoration: BoxDecoration(
                      color: selectedIndex == 1
                          ? AppColors.passwordColor
                          : Colors.white,
                      border:
                          Border.all(color: AppColors.primaryColor, width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'M',
                        style: AppTextStyle.bold11
                            .copyWith(color: AppColors.primaryColor),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = 2;
                      selectedSizeText = 'S';
                    });
                  },
                  child: Container(
                    width: 50,
                    height: 40,
                    decoration: BoxDecoration(
                      color: selectedIndex == 2
                          ? AppColors.passwordColor
                          : Colors.white,
                      border:
                          Border.all(color: AppColors.primaryColor, width: 1),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        'S',
                        style: AppTextStyle.bold11
                            .copyWith(color: AppColors.primaryColor),
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
