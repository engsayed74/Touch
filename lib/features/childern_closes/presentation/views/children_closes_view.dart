import 'package:flutter/material.dart';
import 'package:touch_app/core/widgets/custom_app_bar.dart';
import 'package:touch_app/features/childern_closes/presentation/views/widgets/children_closes_body.dart';

class ChildrenClosesView extends StatelessWidget {
  const ChildrenClosesView({super.key});
static const String routeName = 'children_closes';

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: buildAppBar(context, title: 'ملابس اطفال'),
      body: const ChildrenClosesBody(),
    );;
  }
}