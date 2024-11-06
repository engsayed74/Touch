import 'package:flutter/material.dart';
import 'package:touch_app/core/widgets/custom_app_bar.dart';
import 'package:touch_app/features/setting/presentation/views/widgets/complains_body.dart';

class ComplainsView extends StatelessWidget {
  const ComplainsView({super.key});
static const String routeName = 'ComplainsView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white ,
      appBar: buildAppBar(context, title: '( الادارة )'),
      body: const ComplainsBody(),
    );
  }
}