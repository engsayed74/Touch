import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/widgets/custom_container.dart';

class CartSections extends StatelessWidget {
  const CartSections({super.key});
  final List<CustomContainer> items = const [
    CustomContainer(
        text: 'ملابس أطفال',
        colors: [AppColors.childColor, AppColors.womenColor]),
    CustomContainer(
        colors: [AppColors.womenColor, AppColors.womenColor2],
        text: 'ملابس نسائية'),
    CustomContainer(
      text: 'ملابس رجالية',
      colors: [AppColors.menColor, AppColors.menColor2],
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4),
        child: GestureDetector(
          onTap:  () {
            if(index == 0){
                Navigator.pushNamed(context, 'children_closes');

            }
            else if(index == 1){
              Navigator.pushNamed(context, 'women_closes');
            }
            else if(index == 2){
                          Navigator.pushNamed(context, 'men_closes');

            }
          },
          
          child: CardSectionBody(cstmContainer: items[index])),
      ),
      itemCount: items.length,
      scrollDirection: Axis.horizontal,
    );
  }
}

class CardSectionBody extends StatelessWidget {
  const CardSectionBody({
    super.key,
    required this.cstmContainer,
  });
  final CustomContainer cstmContainer;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:const EdgeInsets.all(8),
      width: 258,
      height: 129,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: AppColors.primaryColor, width: 1),
      ),
      child: Stack(children: [
        ClipRRect(
          child: Image.asset(
            'assets/images/fruit.png',
            fit: BoxFit.cover,
            width: 232,
            height: 113,
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: cstmContainer,
        )
      ]),
    );
  }
}
