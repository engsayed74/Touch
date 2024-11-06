import 'package:flutter/material.dart';
import 'package:touch_app/core/widgets/custom_app_bar.dart';
import 'package:touch_app/features/setting/presentation/views/widgets/favourit_body.dart';

class FavouriView extends StatelessWidget {
  const FavouriView({super.key});
static const String routeName = 'FavouriView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'المفضلة'),
      body: const FavouritBody(),
    );
  }
}