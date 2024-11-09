import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';
import 'package:touch_app/core/widgets/custom_text_field.dart';
import 'package:touch_app/core/widgets/password_field.dart';
import 'package:touch_app/features/auth/presentation/views/login_view.dart';

class PersonViewBody extends StatefulWidget {
  const PersonViewBody({super.key});

  @override
  State<PersonViewBody> createState() => _PersonViewBodyState();
}

class _PersonViewBodyState extends State<PersonViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late String phone, password, email, userName, placeNAme, confirmPassword;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:const  EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 16,),
               SizedBox(
                  width: 204,
                  height: 170,
                  child: Image.asset(
                    'assets/images/logo_1.png',
                    fit: BoxFit.contain,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                CustomTextFormField(
                  prefixIcon: const Icon(Icons.person_2_outlined) ,
                  onSaved: (value) => userName = value,
                  hintText: 'اسم المستخدم',
                  textInputType: TextInputType.name,
                ),
                const SizedBox(
                  height: 16,
                ),
                 CustomTextFormField(
                  prefixIcon: const Icon(Icons.email_outlined) ,
                onSaved: (value) {
                  
                  email = value;
                },
                hintText: 'البريد الالكتروني',
                textInputType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 16,
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
                height: 16,
              ),
               PasswordField(
                onSaved: (value) {
                  password = value!;
                },
              ),
              const SizedBox(height: 16,),
             
               Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Expanded(
                               child: SizedBox(
                                               child: ElevatedButton(
                                                 style: ElevatedButton.styleFrom(
                                                   padding: const EdgeInsets.symmetric(vertical: 12),
                                                   foregroundColor: Colors.white,
                                                   backgroundColor:
                                                        AppColors.primaryColor 
                                                 ),
                                                 onPressed: () {
                                                    /*if (formKey.currentState!.validate()) {
                                                       formKey.currentState!.save();
                                                       ScaffoldMessenger.of(context).showSnackBar(
                                                         SnackBar(content: Text('Processing Data: $phone, $password')),
                                                       );
                                                    
                                                     }*/
                                                       Navigator.pushReplacementNamed(
                                                           context, LoginView.routeName);
                                                 },
                                                 child:  Text(
                                                   'تحديث البيانات',
                                                   style: AppTextStyle.regular18,
                                                 ),
                                               ),
                               ),
                             ),
                           ],
                         ),

               
            ],
          ),
        ),
      ),
    );
  }
}