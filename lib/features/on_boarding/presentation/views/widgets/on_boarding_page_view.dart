import 'package:flutter/material.dart';
import 'package:touch_app/features/on_boarding/presentation/views/widgets/page_view_item.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({super.key, required this.pageController,  });


     final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      
      children:const  [
         PageViewItem(
            image: 'assets/images/logo_1.png',
            title:
                'التطبيق يوفر للعميل أفضل تصاميم الملابس سواء كانت للرجال او السيدات  اوالاطفال'),
         PageViewItem(
            image: 'assets/images/logo_1.png',
            title:
                'تطبيق يتيح لكل من مقدمى الخدمة من المصممين بعرض منتجاتهم المتنوعة من  الملابس'),
      ],
    );
  }
}
