import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class SpecialSizeBody extends StatefulWidget {
  const SpecialSizeBody({super.key});

  @override
  _SpecialSizeBodyState createState() => _SpecialSizeBodyState();
}

class _SpecialSizeBodyState extends State<SpecialSizeBody> {
  int? _selectedIndex; // لتتبع الكارت الذي تم الضغط عليه

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text('الرقبة',
                    style: AppTextStyle.bold14
                        .copyWith(color: AppColors.primaryColor)),
                Text('العرض',
                    style: AppTextStyle.bold14
                        .copyWith(color: AppColors.primaryColor)),
                Text('الطول',
                    style: AppTextStyle.bold14
                        .copyWith(color: AppColors.primaryColor)),
                Text('المقاس',
                    style: AppTextStyle.bold14
                        .copyWith(color: AppColors.primaryColor)),
              ],
            ),
            const SizedBox(height: 16),
            SpecialSizeContainer(
              onCardTap: (index) {
                setState(() {
                  _selectedIndex = index;
                });

                // عرض البوب أب
              },
              selectedIndex: _selectedIndex,
            ),
            const SizedBox(height: 64),
            GestureDetector(
              onTap: () =>
                  _selectedIndex != null ? Navigator.pop(context) : null,
              child: Card(
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: _selectedIndex != null
                        ? AppColors.primaryColor
                        : Colors.grey.withOpacity(0.03),
                    border: Border.all(
                        color: Colors.grey.withOpacity(.1), width: 1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text('تاكيد',
                        style:
                            AppTextStyle.bold18.copyWith(color: Colors.white)),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}

class SpecialSizeContainer extends StatelessWidget {
  final Function(int) onCardTap;
  final int? selectedIndex;

  const SpecialSizeContainer({
    super.key,
    required this.onCardTap,
    required this.selectedIndex,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.sizeOf(context).height * 0.6,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 6,
        itemBuilder: (context, index) {
          bool isSelected = selectedIndex == index;
          return GestureDetector(
            onTap: () => onCardTap(index),
            child: Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Card(
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: isSelected
                        ? AppColors.passwordColor
                        : Colors.grey.withOpacity(0.08),
                    border: Border.all(
                        color: isSelected
                            ? Colors.orange
                            : Colors.grey.withOpacity(.1),
                        width: 1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('30',
                          style: AppTextStyle.bold18
                              .copyWith(color: AppColors.primaryColor)),
                      Text('100',
                          style: AppTextStyle.bold18
                              .copyWith(color: AppColors.primaryColor)),
                      Text('88',
                          style: AppTextStyle.bold18
                              .copyWith(color: AppColors.primaryColor)),
                      Card(
                        child: Container(
                          width: 70,
                          height: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: isSelected ? Colors.orange : Colors.white,
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text('3XL',
                                style: AppTextStyle.bold18
                                    .copyWith(color: AppColors.primaryColor)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
