import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';
import 'package:touch_app/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 16),
              child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, 'setting');
                  },
                  child: const Icon(Icons.menu, color: Colors.white))),
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 4),
          child: SizedBox(
            width: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(
                  color: Colors.white,
                  Icons.search,
                ),
                GestureDetector(
                    onTap: () => Navigator.pushNamed(context, 'BasketView'),
                    child: Image.asset(
                      'assets/images/cart.png',
                      width: 20,
                      height: 20,
                    ))
              ],
            ),
          ),
        ),
        centerTitle: true,
        title: Text(
          'الرئيسية',
          textAlign: TextAlign.center,
          style: AppTextStyle.bold18.copyWith(color: Colors.white),
        ),
      ),
      body: const HomeViewBody(),
    );
  }
}
