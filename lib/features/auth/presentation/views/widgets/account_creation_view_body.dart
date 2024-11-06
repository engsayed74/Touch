import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';
import 'package:touch_app/core/widgets/custom_button.dart';
import 'package:touch_app/core/widgets/custom_text.dart';
import 'package:touch_app/core/widgets/custom_text_field.dart';
import 'package:touch_app/features/auth/presentation/views/login_view.dart';
import 'package:touch_app/features/home/presentation/views/curved_bottom_navigation_view.dart';

class AccountCreationBody extends StatefulWidget {
  const AccountCreationBody({super.key});

  @override
  State<AccountCreationBody> createState() => _AccountCreationBodyState();
}

class _AccountCreationBodyState extends State<AccountCreationBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late String phone, password, email, userName, placeNAme, confirmPassword;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 8,
              ),
              Container(
                width: 243,
                height: 203,
                child: Image.asset(
                  'assets/images/logo_3.png',
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              const CustomText(text: 'اسم المستخدم'),
              const SizedBox(
                height: 8,
              ),
              CustomTextFormField(
                onSaved: (value) => userName = value,
                hintText: 'اسم المستخدم',
                textInputType: TextInputType.name,
              ),
              const SizedBox(
                height: 8,
              ),
              const CustomText(text: 'رقم الجوال'),
              const SizedBox(
                height: 8,
              ),
              CustomTextFormField(
                onSaved: (value) => phone = value,
                hintText: 'رقم الجوال',
                textInputType: TextInputType.phone,
                prefixIcon: Padding(
                    padding:const EdgeInsets.only(left: 10, top: 16),
                    child: Text(
                      '+966',
                      style: AppTextStyle.regular16
                          .copyWith(color: AppColors.primaryColor),
                    )),
              ),
              const SizedBox(
                height: 8,
              ),
              const CustomText(text: 'البريد الالكترونى'),
              const SizedBox(
                height: 8,
              ),
              CustomTextFormField(
                onSaved: (value) {
                  email = value;
                },
                hintText: ' Selia@gmail.com',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 8,
              ),
              const CustomText(text: 'كلمة السر'),
              const SizedBox(
                height: 8,
              ),
              CustomTextFormField(
                  onSaved: (value) => password = value,
                  obscureText: true,
                  hintText: 'كلمة السر',
                  textInputType: TextInputType.visiblePassword),
              const SizedBox(
                height: 8,
              ),
              const CustomText(text: 'تأكيد كلمة السر'),
              const SizedBox(
                height: 8,
              ),
              CustomTextFormField(
                obscureText: true,
                onSaved: (value) => confirmPassword = value,
                hintText: ' كلمة السر',
                textInputType: TextInputType.visiblePassword,
              ),
              const SizedBox(
                height: 8,
              ),
              const CustomText(text: 'مكان المستخدم'),
              const SizedBox(
                height: 8,
              ),
              CustomTextFormField(
                onSaved: (value) => placeNAme = value,
                hintText: 'مكان المستخدم',
                textInputType: TextInputType.text,
                prefixIcon:  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Image.asset(
                      'assets/images/location_on_small.png',
                      color: AppColors.primaryColor,
                      width: 10,height: 10,
                    ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              CustomButton(
                text: 'تسجيل',
                onPressed: () {
/*if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Processing Data: $phone, $password')),
                  );

                }*/
                  Navigator.pushReplacementNamed(
                      context, CurvedBottomNavigation.routeName);
                },
              ),
              const SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(context, LoginView.routeName);
                },
                child: RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: ' تمتلك حساب ؟ ',
                        style: AppTextStyle.regular16.copyWith(
                            color: AppColors.primaryColor.withOpacity(.9)),
                      ),
                      TextSpan(
                        text: 'سجل الأن ',
                        style: AppTextStyle.regular16
                            .copyWith(color: AppColors.passwordColor),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 32,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
