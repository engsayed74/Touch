import 'package:flutter/material.dart';
import 'package:touch_app/core/widgets/custom_alert_card.dart';

class AlertsViewBody extends StatelessWidget {
  const AlertsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 32,left: 16,right: 16,bottom: 16),
      child: ListView.builder(
        
        itemBuilder: (context, index) => const Padding(
          padding:  EdgeInsets.only(bottom: 16),
          child:  CustomAlertCard(),
        ),
        itemCount: 5,
        ),
    );
  }
}