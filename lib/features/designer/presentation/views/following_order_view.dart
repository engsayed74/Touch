import 'package:flutter/material.dart';
import 'package:touch_app/core/widgets/custom_app_bar.dart';
import 'package:touch_app/features/designer/presentation/views/widgets/following_order_body.dart';

class FollowingOrderView extends StatelessWidget {
  const FollowingOrderView({super.key});
  static const String routeName = 'followingOrderBody';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'تتبع الطلب'),
      body: const FollowingOrderBody(),
    );
  }
}