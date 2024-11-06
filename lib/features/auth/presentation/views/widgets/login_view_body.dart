import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';
import 'package:touch_app/core/widgets/custom_button.dart';
import 'package:touch_app/core/widgets/custom_text_field.dart';
import 'package:touch_app/core/widgets/password_field.dart';
import 'package:touch_app/features/auth/presentation/views/account_creation_view.dart';
import 'package:touch_app/features/home/presentation/views/curved_bottom_navigation_view.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late String phone, password;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 16,
              ),
              Container(
                width: 204,
                height: 170,
                child: Image.asset(
                  'assets/images/logo_1.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                'مرحبا بعودتك',
                style: AppTextStyle.bold22.copyWith(color: AppColors.navyColor),
              ),
              const SizedBox(
                height: 32,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  phone = value!;
                },
                hintText: 'رقم الجوال',
                textInputType: TextInputType.phone,
                prefixIcon: Padding(
                    padding: const EdgeInsets.only(left: 10, top: 16),
                    child: Text(
                      '+966',
                      style: AppTextStyle.regular16
                          .copyWith(color: AppColors.primaryColor),
                    )),
              ),
              const SizedBox(
                height: 12,
              ),
              PasswordField(
                onSaved: (value) {
                  password = value!;
                },
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                'نسيت كلمة المرور ؟',
                style: AppTextStyle.regular16
                    .copyWith(color: AppColors.passwordColor),
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                          content: Text('Processing Data: $phone, $password')),
                    );
                    Navigator.pushNamed(
                        context, CurvedBottomNavigation.routeName);
                  } else {
                    // Show a message or handle invalid form case
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                          content: Text('يرجى ملء جميع الحقول المطلوبة')),
                    );
                  }
                },
                text: ('تسجيل الدخول'),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(
                      context, CurvedBottomNavigation.routeName);
                },
                child: Text(
                  'متابعة كزائر',
                  style: AppTextStyle.regular18.copyWith(color: Colors.black),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushNamed(context, AccountCreationView.routeName);
                },
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: ' لا تمتلك حساب ؟ ',
                        style: AppTextStyle.regular16.copyWith(
                            color: AppColors.primaryColor.withOpacity(.5)),
                      ),
                      TextSpan(
                        text: 'سجل الأن',
                        style: AppTextStyle.regular16
                            .copyWith(color: AppColors.passwordColor),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
