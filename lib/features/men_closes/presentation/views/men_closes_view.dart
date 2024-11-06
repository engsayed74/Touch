import 'package:flutter/material.dart';
import 'package:touch_app/core/widgets/custom_app_bar.dart';
import 'package:touch_app/features/men_closes/presentation/views/widgets/men_closes_body.dart';

class MenClosesView extends StatelessWidget {
  const MenClosesView({super.key});
static const String routeName = 'men_closes';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context, title: 'ملابس رجالي'),
      body: const MenClosesBody(),
    );
  }
}