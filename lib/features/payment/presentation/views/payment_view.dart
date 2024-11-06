import 'package:flutter/material.dart';
import 'package:touch_app/core/widgets/custom_app_bar.dart';
import 'package:touch_app/features/payment/presentation/views/widgets/payment_body.dart';

class PaymentView extends StatelessWidget {
  const PaymentView({super.key});
  static const String routeName = 'payment';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'الدفع'),
      body: const PaymentBody(),
    );
  }
}