import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliderDesigner extends StatefulWidget {
  SliderDesigner({super.key});
  static List<Widget> imgList = [
    Image.asset(
      'assets/images/vegtableinfo.png',
      width: double.infinity,
      fit: BoxFit.cover,
    ),
    Image.asset('assets/images/vegtableinfo.png',
        width: double.infinity, fit: BoxFit.cover),
    Image.asset(
      'assets/images/fruit.png',
      width: double.infinity,
      fit: BoxFit.cover,
    ),
    Image.asset(
      'assets/images/loading2.gif',
      width: double.infinity,
      fit: BoxFit.cover,
    ),
  ];

  @override
  State<SliderDesigner> createState() => _SliderItemState();
}

class _SliderItemState extends State<SliderDesigner> {
  int currentpage = 0;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: SliderDesigner.imgList,
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
    );
  }
}
