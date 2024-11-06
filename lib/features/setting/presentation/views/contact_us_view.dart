import 'package:flutter/material.dart';
import 'package:touch_app/core/widgets/custom_app_bar.dart';
import 'package:touch_app/features/setting/presentation/views/widgets/contact_us_body.dart';

class ContactUsView extends StatelessWidget {
  const ContactUsView({super.key});
static const String routeName = 'ContactUsView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white ,
      appBar: buildAppBar(context, title: 'تواصل معنا'),
      body: const ContactUsBody(),
    );
  }
}