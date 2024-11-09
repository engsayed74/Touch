import 'package:flutter/material.dart';
import 'package:touch_app/core/widgets/custom_app_bar.dart';
import 'package:touch_app/features/home/presentation/views/widgets/alerts_view_body.dart';

class AlertsView extends StatelessWidget {
  const AlertsView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: buildAppBar(context, title: 'تنبيهاتى'),
      body:const AlertsViewBody(),
    );
  }
}