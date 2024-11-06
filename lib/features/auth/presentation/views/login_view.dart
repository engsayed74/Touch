import 'package:flutter/material.dart';
import 'package:touch_app/features/auth/presentation/views/widgets/login_view_body.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});
static const String routeName = 'loginView';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: const Visibility( visible: false,child:  Icon(Icons.arrow_back_ios_new), ),
        backgroundColor: Colors.white,
      ),
      body: const LoginViewBody(),
    );
  }
}