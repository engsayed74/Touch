import 'package:flutter/material.dart';
import 'package:touch_app/core/widgets/custom_app_bar.dart';
import 'package:touch_app/features/home/presentation/views/widgets/person_view_body.dart';

class PersonView extends StatelessWidget {
  const PersonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white ,
      appBar: buildAppBar(context, title: 'تعديل البيانات'),
      body: const PersonViewBody(),
    );
  }
}