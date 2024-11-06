import 'package:flutter/material.dart';
import 'package:touch_app/core/widgets/custom_app_bar.dart';
import 'package:touch_app/features/private_order/presentation/views/widgets/private_order_body.dart';

class PrivateOrderView extends StatelessWidget {
  const PrivateOrderView({super.key});
static const String routeName = 'PrivateOrderView';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: buildAppBar(context, title: 'طلب خاص',),

      body: const PrivateOrderBody(),
    );
  }
}