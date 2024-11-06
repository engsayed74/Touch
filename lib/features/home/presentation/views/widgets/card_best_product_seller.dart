import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';
import 'package:touch_app/core/widgets/custom_container2.dart';

class CardBestSellerProducts extends StatelessWidget {
  const CardBestSellerProducts({super.key});
  final List<CustomContainer2> itemlist2 = const [
    CustomContainer2(
        text: 'ملابس أطفال',
        colors: [AppColors.childColor, AppColors.womenColor]),
    CustomContainer2(
        colors: [AppColors.womenColor, AppColors.womenColor2],
        text: 'ملابس نسائية'),
    CustomContainer2(
      text: 'ملابس رجالية',
      colors: [AppColors.menColor, AppColors.menColor2],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: BestSellerBody(cstmcontainer2: itemlist2[index]),
      ),
      itemCount: itemlist2.length,
      scrollDirection: Axis.horizontal,
    );
  }
}

class BestSellerBody extends StatelessWidget {
  const BestSellerBody({
    super.key,
    required this.cstmcontainer2,
  });
  final CustomContainer2 cstmcontainer2;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        width: 159,
        height: 197,
        decoration: BoxDecoration(
          border:
              Border.all(color: AppColors.primaryColor.withOpacity(.3), width: 1),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                ClipRRect(
                  child: Image.asset(
                    'assets/images/fruit.png',
                    fit: BoxFit.cover,
                    width: 145,
                    height: 150,
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: cstmcontainer2,
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    width: 50,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('ريال',
                            style: AppTextStyle.regular11
                                .copyWith(color: AppColors.primaryColor)),
                        Text(
                          '400',
                          style: AppTextStyle.regular11
                              .copyWith(color: AppColors.primaryColor),
                        ),
                      ],
                    ),
                  ),
                  Text(
                    'فستان',
                    textAlign: TextAlign.right,
                    style: AppTextStyle.bold11
                        .copyWith(color: AppColors.namepersonColor),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
