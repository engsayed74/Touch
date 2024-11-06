import 'package:flutter/material.dart';
import 'package:touch_app/core/widgets/custom_app_bar.dart';
import 'package:touch_app/features/setting/presentation/views/widgets/common_question_body.dart';

class CommonQuestionView extends StatelessWidget {
  const CommonQuestionView({super.key});
static const String routeName = 'common_question_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'الاسئلة الشائعة'),
      body: const CommonQuestionBody(),
    );
  }
}