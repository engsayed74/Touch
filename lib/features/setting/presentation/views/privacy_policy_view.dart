import 'package:flutter/material.dart';
import 'package:touch_app/core/widgets/custom_app_bar.dart';
import 'package:touch_app/features/setting/presentation/views/widgets/privacy_policy_body.dart';

class PrivacyPolicyView extends StatelessWidget {
  const PrivacyPolicyView({super.key});
static const String routeName = 'PrivacyPolicyView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'سياسة الخصوصية'),
      body: const PrivacyPolicyBody(),
    );
  }
}