import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';
import 'package:touch_app/core/widgets/home_text.dart';
import 'package:touch_app/features/home/presentation/views/widgets/card_best_product_seller.dart';
import 'package:touch_app/features/home/presentation/views/widgets/card_designer_home.dart';
import 'package:touch_app/features/home/presentation/views/widgets/card_new_product_home.dart';
import 'package:touch_app/features/home/presentation/views/widgets/card_story_home.dart';
import 'package:touch_app/features/home/presentation/views/widgets/cart_sections.dart';
import 'package:touch_app/features/home/presentation/views/widgets/slider_indicator_item.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 16,
            ),
            SliderItem(),
            const SizedBox(
              height: 16,
            ),
            Text(
              'الأقسام',
              style:
                  AppTextStyle.bold18.copyWith(color: AppColors.primaryColor),
            ),
            const SizedBox(
              height: 16,
            ),
            const SizedBox(
              width: double.infinity,
              height: 129,
              child: CartSections(),
            ),
            const SizedBox(
              height: 16,
            ),
            const HomeText(
              title: 'القصص',
            ),
            const SizedBox(
              height: 16,
            ),
            const SizedBox(
              width: double.infinity,
              height: 97,
              child: StoryCard(),
            ),
            const SizedBox(
              height: 16,
            ),
            const HomeText(
              title: 'المصممون',
            ),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
                height: 106,
                width: double.infinity,
                child: GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, 'DesignerNameView'),
                    child: const DesignerCard())),
            const SizedBox(
              height: 16,
            ),
            const HomeText(title: 'المنتجات الجديدة'),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
                width: double.infinity,
                height: 197,
                child: GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, 'closesdetailsview'),
                    child: const NewProductsCard())),
            const SizedBox(
              height: 16,
            ),
            const HomeText(title: 'المنتجات الأكثر مبيعا'),
            const SizedBox(
              height: 16,
            ),
            SizedBox(
                width: double.infinity,
                height: 197,
                child: GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, 'closesdetailsview'),
                    child: const CardBestSellerProducts())),
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
            SizedBox(
                width: double.infinity,
                height: 197,
                child: GestureDetector(
                    onTap: () =>
                        Navigator.pushNamed(context, 'closesdetailsview'),
                    child: const CardBestSellerProducts())),
            const SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}
