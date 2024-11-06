import 'package:flutter/material.dart';
import 'package:touch_app/core/widgets/custom_app_bar.dart';
import 'package:touch_app/features/setting/presentation/views/widgets/about_us_body.dart';

class AboutUsView extends StatelessWidget {
  const AboutUsView({super.key});
static const String routeName = 'AboutUsView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'من نحن'),
      body: const AboutUsBody(),
    );
  }
}