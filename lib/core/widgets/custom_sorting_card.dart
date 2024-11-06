import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class CustomSortingCard extends StatelessWidget {
  const CustomSortingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 1 / 1.3,
      ),
      itemBuilder: (context, index) => const CustomSortingCardBody(),
      itemCount: 6,
    );
  }
}

class CustomSortingCardBody extends StatelessWidget {
  const CustomSortingCardBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey.withOpacity(.2), width: 1),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor.withOpacity(.8),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    'assets/images/fruit.png',
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24, right: 8, top: 8),
              child: Text(
                'جاكت',
                style:
                    AppTextStyle.bold14.copyWith(color: AppColors.primaryColor),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
