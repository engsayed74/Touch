import 'package:flutter/material.dart';
import 'package:touch_app/core/widgets/custom_app_bar.dart';
import 'package:touch_app/features/auth/presentation/views/widgets/account_creation_view_body.dart';

class AccountCreationView extends StatelessWidget {
  const AccountCreationView({super.key});
static const routeName = 'accountcreationview';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white ,
      appBar: buildAppBar(context, title: 'انشاء حساب',),
      body:const AccountCreationBody()
    );
  }
}