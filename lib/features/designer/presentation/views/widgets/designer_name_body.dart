import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';
import 'package:touch_app/core/widgets/custom_container2.dart';
import 'package:touch_app/core/widgets/custom_rating_bar.dart';
import 'package:touch_app/features/designer/presentation/views/widgets/slider.dart';
import 'package:touch_app/features/home/presentation/views/widgets/card_best_product_seller.dart';
import 'package:touch_app/features/home/presentation/views/widgets/card_story_home.dart';
import 'package:touch_app/features/home/presentation/views/widgets/cart_sections.dart';

class DesignerNameBody extends StatefulWidget {
  const DesignerNameBody({super.key});

  @override
  State<DesignerNameBody> createState() => _DesignerNameBodyState();
}

class _DesignerNameBodyState extends State<DesignerNameBody> {
  bool isFollowing = false;
  int count = 5;

  void _toggleFollow() {
    setState(() {
      if (isFollowing) {
        count--;
        customScaffoldMessenger('تم الغاء المتابعة');
      } else {
        count++;
        customScaffoldMessenger('تم المتابعة');
      }
      isFollowing = !isFollowing;
    });
  }

  void customScaffoldMessenger(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        width: MediaQuery.sizeOf(context).width * 0.5,
        content: Text(
          message,
          style: AppTextStyle.bold16,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              SliderDesigner(),
              Positioned(
                top: 6,
                right: 5,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: AppColors.primaryColor.withOpacity(.9),
                    ),
                    child: Image.asset(
                      'assets/images/back_white.png',
                      width: 24,
                      height: 24,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: -100,
                right: 2,
                child: Image.asset(
                  'assets/images/woman.png',
                  width: 120,
                  height: 140,
                ),
              ),
              Positioned(
                bottom: -30,
                right: 110,
                child: Text(
                  'مى أحمد',
                  style: AppTextStyle.bold18
                      .copyWith(color: AppColors.secondaryColor),
                  textAlign: TextAlign.right,
                ),
              ),
              const Positioned(
                bottom: -50,
                right: 110,
                child: CustomRatingBar(),
              ),
              Positioned(
                bottom: -40,
                left: 80,
                child: Text(
                  '  ( $count ) ',
                  style: AppTextStyle.regular16
                      .copyWith(color: AppColors.primaryColor),
                ),
              ),
            ],
          ),
          GestureDetector(
            onTap: _toggleFollow,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, left: 10),
                  child: Container(
                    width: 70,
                    height: 35,
                    decoration: BoxDecoration(
                      color:
                          isFollowing ? AppColors.primaryColor : Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.grey.shade500),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      isFollowing ? 'إلغاء' : 'متابعة',
                      style: AppTextStyle.regular16.copyWith(
                          color: isFollowing
                              ? Colors.white
                              : AppColors.primaryColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'مصمم ملابس نسائية ورجالية وأطفال ولدي خبرة في مجال التصميم الإبداعي بخبرة اكثر من اربع سنوات',
                  style: AppTextStyle.regular11
                      .copyWith(color: AppColors.secondaryColor),
                  textAlign: TextAlign.end,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'القصص',
                  style: AppTextStyle.bold18
                      .copyWith(color: AppColors.primaryColor),
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
                Text(
                  'الأقسام',
                  style: AppTextStyle.bold18
                      .copyWith(color: AppColors.primaryColor),
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
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () =>
                          Navigator.pushNamed(context, 'PrivateOrderView'),
                      child: const CustomContainer2(
                          colors: [Color(0xff8b6990), Color(0xffddbde1)],
                          text: 'تصميم خاص'),
                    ),
                    Text(
                      'المنتجات',
                      style: AppTextStyle.bold18
                          .copyWith(color: AppColors.primaryColor),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                    width: double.infinity,
                    height: 197,
                    child: CardBestSellerProducts()),
                const SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
