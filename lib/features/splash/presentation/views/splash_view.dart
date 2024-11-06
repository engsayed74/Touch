import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/features/splash/presentation/views/widgets/splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});
static const routeName = 'splash';
  @override

  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        toolbarHeight: 15,
      ),
      body: const SplashViewBody(),
    );
  }
}