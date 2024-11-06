import 'package:flutter/material.dart';
import 'package:touch_app/core/widgets/custom_app_bar.dart';
import 'package:touch_app/features/setting/presentation/views/widgets/about_developer_body.dart';

class AboutDeveloperView extends StatelessWidget {
  const AboutDeveloperView({super.key});
static const routeName = 'about_developer_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'عن المطور'),
      body: const AboutDeveloperBody(),
    );
  }
}