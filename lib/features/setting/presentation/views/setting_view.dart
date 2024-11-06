import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/features/setting/presentation/views/widgets/setting_view_body.dart';

class SettingView extends StatelessWidget {
  const SettingView({super.key});
  static const String routeName = 'setting';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 20,
        backgroundColor: Colors.white,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Icons.arrow_forward,
                    color: AppColors.primaryColor)),
          ),
        ],
        leading: const Visibility(
          visible: false,
          child: Icon(Icons.arrow_back_ios_new),
        ),
      ),
      body: const SettingViewBody(),
    );
  }
}
