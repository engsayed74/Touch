import 'package:flutter/material.dart';
import 'package:touch_app/core/widgets/custom_app_bar.dart';
import 'package:touch_app/features/basket/presentation/views/widgets/basket_body.dart';

class BasketView extends StatelessWidget {
  const BasketView({super.key});
static const String routeName ='BasketView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'السلة'),
      body: const BasketBody(),
    );
  }
}