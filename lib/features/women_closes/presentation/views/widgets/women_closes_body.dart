import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';
import 'package:touch_app/core/widgets/custom_sorting_card.dart';
import 'package:touch_app/core/widgets/drop_down_button.dart';
import 'package:touch_app/features/home/presentation/views/widgets/cart_sections.dart';

class WomenClosesBody extends StatelessWidget {
  const WomenClosesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 32,
            ),
            Text(
              'الأقسام',
              style:
                  AppTextStyle.bold18.copyWith(color: AppColors.primaryColor),
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: double.infinity,
              height: 129,
              child: GestureDetector(
                  onTap: () => Navigator.pushNamed(context, 'men_closes'),
                  child: const CartSections()),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'المنتجات',
              style:
                  AppTextStyle.bold18.copyWith(color: AppColors.primaryColor),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                const CustomDropDownButton(),
                const SizedBox(
                  width: 12,
                ),
                Text(
                  ': تصنيف حسب',
                  style: AppTextStyle.bold14
                      .copyWith(color: AppColors.primaryColor),
                ),
                const SizedBox(
                  width: 12,
                ),
                Image.asset(
                  'assets/images/filter_alt.png',
                  width: 30,
                  height: 30,
                ),
              ],
            ),
            const SizedBox(
              height: 24,
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height,
              width: double.infinity,
              child: GestureDetector(
                  onTap: () =>
                      Navigator.pushNamed(context, 'closesdetailsview'),
                  child: const CustomSortingCard()),
            ),
            const SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}
