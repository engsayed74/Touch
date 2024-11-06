import 'package:flutter/material.dart';
import 'package:touch_app/core/widgets/custom_app_bar.dart';
import 'package:touch_app/features/setting/presentation/views/widgets/setup_body.dart';

class SetUpView extends StatelessWidget {
  const SetUpView({super.key});
  static const String routeName ='SetUpView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'الاعدادات'),
      body: const SetUpBody(),
    );
  }
}