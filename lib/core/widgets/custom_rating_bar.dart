import 'package:flutter/material.dart';
import 'package:flutter_pannable_rating_bar/flutter_pannable_rating_bar.dart';
import 'package:touch_app/core/utils/app_colors.dart';

class CustomRatingBar extends StatefulWidget {
  const CustomRatingBar({super.key});

  @override
  State<CustomRatingBar> createState() => _CustomRatingBarState();
}

class _CustomRatingBarState extends State<CustomRatingBar> {
  double rating = 4;

  @override
  Widget build(BuildContext context) {
    return PannableRatingBar(
      textDirection: TextDirection.rtl,
      rate: rating,
      items: List.generate(
          5,
          (index) => const RatingWidget(
                selectedColor: AppColors.ratingColor,
                unSelectedColor: Colors.grey,
                child: Icon(
                  Icons.star,
                  size: 15,
                ),
              )),
      onChanged: (value) {
        // the rating value is updated on tap or drag.
        setState(() {
          rating = value;
        });
      },
    );
  }
}
