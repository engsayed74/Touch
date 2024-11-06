import 'package:flutter/material.dart';
import 'package:touch_app/core/widgets/custom_app_bar.dart';
import 'package:touch_app/features/private_order/presentation/views/widgets/private_order_details_body.dart';

class PrivateOrderDetailsView extends StatelessWidget {
  const PrivateOrderDetailsView({super.key});
  static const routeName = 'privateOrderDetailsView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(
        context,
        title: 'طلب خاص',
      ),
      body: const PrivateOrderDetailsBody(),
    );
  }
}
