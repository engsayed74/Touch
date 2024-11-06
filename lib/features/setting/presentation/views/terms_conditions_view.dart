import 'package:flutter/material.dart';
import 'package:touch_app/core/widgets/custom_app_bar.dart';
import 'package:touch_app/features/setting/presentation/views/widgets/terms_conditions_body.dart';

class TermsConditionsView extends StatefulWidget {
  const TermsConditionsView({super.key});
static const String routeName = 'terms_conditions_view';

  @override
  State<TermsConditionsView> createState() => _TermsConditionsViewState();
}

class _TermsConditionsViewState extends State<TermsConditionsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'الشروط والاحكام'),
      body: const TermsConditionsBody(),
    );
  }
}