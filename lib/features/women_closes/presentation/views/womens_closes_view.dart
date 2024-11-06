import 'package:flutter/material.dart';
import 'package:touch_app/core/widgets/custom_app_bar.dart';
import 'package:touch_app/features/women_closes/presentation/views/widgets/women_closes_body.dart';

class WomenClosesView extends StatelessWidget {
  const WomenClosesView({super.key});
static const String routeName = 'women_closes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context, title: 'ملابس حريمي'),
      body: const WomenClosesBody(),
    );
  }
}