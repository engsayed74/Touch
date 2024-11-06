import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:touch_app/constants.dart';
import 'package:touch_app/core/services/shared_preference_singletone.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/features/auth/presentation/views/login_view.dart';
import 'package:touch_app/features/on_boarding/presentation/views/widgets/on_boarding_page_view.dart';

class OnBoardingViewBody extends StatefulWidget {
  const OnBoardingViewBody({super.key});

  @override
  State<OnBoardingViewBody> createState() => _OnBoardingViewBodyState();
}

class _OnBoardingViewBodyState extends State<OnBoardingViewBody> {
  late PageController pageController;
  var currentPage = 0;
  @override
  void initState() {
    pageController = PageController();

    pageController.addListener(() {
      currentPage = pageController.page!.round();

      setState(() {});
      Future.delayed(Duration(seconds: 3), () {
        if (currentPage == 1) {
          Prefs.setBool(kIsOnBoardingViewSeen, true);
          Navigator.pushReplacementNamed(context, LoginView.routeName);
        }
      });
    });
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.5,
              child: OnBoardingPageView(pageController: pageController)),
          DotsIndicator(
            dotsCount: 2,
            position: currentPage,
            decorator: DotsDecorator(
              // Inactive color
              activeColor: (currentPage == 0 || currentPage == 1)
                  ? AppColors.primaryColor
                  : AppColors.secondaryColor,
              //color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
