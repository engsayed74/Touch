import 'package:flutter/material.dart';
import 'package:touch_app/core/helper_functions/alert_dialog_report.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';
import 'package:touch_app/core/widgets/custom_rating_bar.dart';
import 'package:touch_app/features/closes_details/presentation/views/widgets/size_row.dart';
import 'package:touch_app/features/home/presentation/views/widgets/card_best_product_seller.dart';

class ClosesDetailsBody extends StatelessWidget {
  const ClosesDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Image.asset(
                'assets/images/vegtableinfo.png',
                height: 250,
                width: MediaQuery.sizeOf(context).width,
                fit: BoxFit.cover,
              ),
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
                bottom: 0,
                left: 2,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'DesignerNameView');
                  },
                  child: Image.asset(
                    'assets/images/woman2.png',
                    fit: BoxFit.cover,
                    width: 120,
                    height: 100,
                  ),
                ),
              ),
              Positioned(
                bottom: 30,
                left: 40,
                child: Text(
                  'مى أحمد',
                  style: AppTextStyle.regular11.copyWith(color: Colors.white),
                  textAlign: TextAlign.right,
                ),
              ),
            ],
          ),
          const SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 70,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            'assets/images/heart_gray.png',
                            width: 30,
                            height: 30,
                          ),
                          GestureDetector(
                            onTap: () {
                              alertDialogReport(context);
                            },
                            child: Image.asset(
                              'assets/images/report.png',
                              width: 25,
                              height: 25,
                            ),
                          )
                        ],
                      ),
                    ),
                    Text('جاكت',
                        style: AppTextStyle.bold18
                            .copyWith(color: AppColors.secondaryColor)),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const CustomRatingBar(),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'جاكت مبطن فرو من احسن الخامات واستخدام احسن الماكينات للصناعة',
                  style: AppTextStyle.bold14
                      .copyWith(color: AppColors.secondaryColor),
                  textAlign: TextAlign.end,
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    Text(
                      'قابل للتعديل',
                      style: AppTextStyle.bold18
                          .copyWith(color: AppColors.passwordColor),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                const SizeContainer(),
                const SizedBox(
                  height: 16,
                ),
                Text(' : الالوان',
                    style: AppTextStyle.bold18
                        .copyWith(color: AppColors.primaryColor)),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.black),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppColors.menColor),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppColors.ratingColor),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppColors.menColorcontainer),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    GestureDetector(
                      onTap: () {
                        
                      },
                      child: Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: AppColors.navyColor),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Card(
                      child: Container(
                        width: 70,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.white),
                        child: Align(
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'ريال',
                                  style: AppTextStyle.bold14
                                      .copyWith(color: AppColors.primaryColor),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '100',
                                  style: AppTextStyle.bold14
                                      .copyWith(color: AppColors.primaryColor),
                                ),
                              ],
                            )),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, 'BasketView'),
                      child: Container(
                        width: 170,
                        height: 45,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: AppColors.primaryColor),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Align(
                                alignment: Alignment.center,
                                child: Text(
                                  ' اضافة الي السلة',
                                  style: AppTextStyle.bold14
                                      .copyWith(color: Colors.white),
                                )),
                            const SizedBox(
                              width: 8,
                            ),
                            Image.asset(
                              'assets/images/cart.png',
                              width: 20,
                              height: 20,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  'المنتجات المشابهة',
                  style: AppTextStyle.bold18
                      .copyWith(color: AppColors.primaryColor),
                ),
                const SizedBox(
                  height: 24,
                ),
                const SizedBox(
                    width: double.infinity,
                    height: 197,
                    child: CardBestSellerProducts()),
                const SizedBox(
                  height: 24,
                ),
                Text(
                  'أخر ما تم مشاهدته',
                  style: AppTextStyle.bold18
                      .copyWith(color: AppColors.primaryColor),
                ),
                const SizedBox(
                  height: 24,
                ),
                const SizedBox(
                    width: double.infinity,
                    height: 197,
                    child: CardBestSellerProducts()),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
