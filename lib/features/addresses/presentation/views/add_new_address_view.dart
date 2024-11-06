import 'package:flutter/material.dart';
import 'package:touch_app/core/widgets/custom_app_bar.dart';
import 'package:touch_app/features/addresses/presentation/views/widgets/add_new_address_body.dart';

class AddNewAddressView extends StatelessWidget {
  const AddNewAddressView({super.key});
static const routeName = 'AddNewAddressView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'اضافة عنوان جديد'),
      body: const AddNewAddressBody(),
    );
  }
}