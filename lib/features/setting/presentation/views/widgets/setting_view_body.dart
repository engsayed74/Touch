import 'package:flutter/material.dart';
import 'package:touch_app/core/helper_functions/show_dialogbox_logout.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';
import 'package:touch_app/core/widgets/custom_setting_mail_container.dart';
import 'package:touch_app/core/widgets/custom_text_button.dart';

class SettingViewBody extends StatefulWidget {
  const SettingViewBody({super.key});

  @override
  State<SettingViewBody> createState() => _SettingViewBodyState();
}

class _SettingViewBodyState extends State<SettingViewBody> {
  bool _isMailingListVisible = false;

  void _toggleMailingListVisibility() {
    setState(() {
      _isMailingListVisible = !_isMailingListVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Image.asset(
            'assets/images/logo_3.png',
            width: 204,
            height: 170,
            fit: BoxFit.contain,
          ),
          Divider(
            color: Colors.grey.withOpacity(.3),
            thickness: 2,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(
                  height: 16,
                ),
                CustomTextButton(
                  text: 'من نحن',
                  image: 'assets/images/aboutus.png',
                  onButtonPressed: () {
                    Navigator.pushNamed(context, 'AboutUsView');
                  },
                ),
                const Divider(
                  thickness: .3,
                ),
                CustomTextButton(
                  text: 'الأسئلة الشائعة',
                  image: 'assets/images/commonq.png',
                  onButtonPressed: () {
                    Navigator.pushNamed(context, 'common_question_view');
                  },
                ),
                const Divider(
                  thickness: .3,
                ),
                CustomTextButton(
                  onButtonPressed: () {
                    Navigator.pushNamed(context, 'FavouriView');
                  },
                  text: 'المفضلة',
                  image: 'assets/images/favourite.png',
                ),
                const Divider(
                  thickness: .3,
                ),
                CustomTextButton(
                  onButtonPressed: () {
                    Navigator.pushNamed(context, 'ComplainsView');
                  },
                  text: 'الشكاوي والمقترحات',
                  image: 'assets/images/aboutdevelopercomplains.png',
                ),
                const Divider(
                  thickness: .3,
                ),
                CustomTextButton(
                  onButtonPressed: () {
                    Navigator.pushNamed(context, 'ContactUsView');
                  },
                  text: 'اتصل بنا',
                  image: 'assets/images/phone_call.png',
                ),
                const Divider(
                  thickness: .3,
                ),
                CustomTextButton(
                  onButtonPressed: () {
                    Navigator.pushNamed(context, 'PrivacyPolicyView');
                  },
                  text: 'سياسة الخصوصية',
                  image: 'assets/images/privacy_terms.png',
                ),
                const Divider(
                  thickness: .3,
                ),
                CustomTextButton(
                  onButtonPressed: () {
                    Navigator.pushNamed(context, 'terms_conditions_view');
                  },
                  text: 'الشروط والحكام',
                  image: 'assets/images/privacy_terms.png',
                ),
                const Divider(
                  thickness: .3,
                ),
                CustomTextButton(
                  onButtonPressed: () {
                    Navigator.pushNamed(context, 'about_developer_view');
                  },
                  text: 'عن المطور',
                  image: 'assets/images/aboutdevelopercomplains.png',
                ),
                const Divider(
                  thickness: .3,
                ),
                CustomTextButton(
                  onButtonPressed: () {
                    Navigator.pushNamed(context, 'SetUpView');
                  },
                  text: 'الاعدادات',
                  image: 'assets/images/settings.png',
                ),
                const Divider(
                  thickness: .3,
                ),
                 CustomTextButton(
                  onButtonPressed: () {
                    showLogoutDialog(context);
                  },
                  text: 'تسجيل خروج',
                  image: 'assets/images/logout.png',
                ),
                const Divider(
                  thickness: .3,
                ),
                CustomTextButton(
                  onButtonPressed: () {
                    _toggleMailingListVisibility();
                  },
                  text: 'قائمة الإشتراك البريدى',
                  image: 'assets/images/mailing.png',
                ),
                const Divider(
                  thickness: .3,
                ),
                Visibility(
                  visible: _isMailingListVisible,
                  child: const CustomSettingMAilContainer(),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/tiktok_icon.png',
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                      'assets/images/instagram_icon.png',
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                      'assets/images/facebook_icon.png',
                      width: 20,
                      height: 20,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                      'assets/images/snapchat_icon.png',
                      width: 20,
                      height: 20,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 32,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '1548',
                      style: AppTextStyle.bold14
                          .copyWith(color: AppColors.innerColor),
                    ),
                    Text('  الإصدار',
                        style: AppTextStyle.bold14
                            .copyWith(color: AppColors.innerColor)),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      ' كل الحقوق محفوظة',
                      style: AppTextStyle.bold14
                          .copyWith(color: AppColors.innerColor),
                    ),
                    Text('  2023 © ',
                        style: AppTextStyle.bold14
                            .copyWith(color: AppColors.innerColor)),
                  ],
                ),
                const SizedBox(
                  height: 32,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
