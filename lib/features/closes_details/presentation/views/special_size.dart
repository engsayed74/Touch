import 'package:flutter/material.dart';
import 'package:touch_app/core/widgets/custom_app_bar.dart';
import 'package:touch_app/features/closes_details/presentation/views/widgets/special_size_body.dart';

class SpecialSizeView extends StatelessWidget {
  const SpecialSizeView({super.key});
static const routeName = 'special_size';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'مقاسات خاصة'),
      body: const SpecialSizeBody(),  
    );
  }
}