import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:touch_app/core/utils/app_colors.dart';

class SliderItem extends StatefulWidget {
  SliderItem({super.key});
  static List<Widget> imgList = [
    Image.asset('assets/images/vegtableinfo.png'),
    Image.asset('assets/images/vegtableinfo.png'),
    Image.asset('assets/images/vegtableinfo.png'),
    Image.asset('assets/images/vegtableinfo.png')
  ];

  @override
  State<SliderItem> createState() => _SliderItemState();
}

class _SliderItemState extends State<SliderItem> {
  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          items: SliderItem.imgList,
          options: CarouselOptions(
            height: 200,
            viewportFraction: 1.0,
            initialPage: 0,
            enableInfiniteScroll: true,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 2),
            autoPlayAnimationDuration: Duration(seconds: 1),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            onPageChanged: (index, reason) {
              setState(() {
                currentpage = index;
              });
            },
            enlargeFactor: 0.3,
          ),
        ),
        buildCaroselIndicator(),
      ],
    );
  }

  buildCaroselIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < SliderItem.imgList.length; i++)
          Container(
              margin: const EdgeInsets.all(5),
              height: i == currentpage ? 8 : 5,
              width: i == currentpage ? 8 : 5,
              decoration: BoxDecoration(
                  color:
                      i == currentpage ? AppColors.primaryColor : Colors.grey,
                  shape: BoxShape.circle))
      ],
    );
  }
}
