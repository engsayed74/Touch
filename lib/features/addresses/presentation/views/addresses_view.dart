import 'package:flutter/material.dart';
import 'package:touch_app/core/widgets/custom_app_bar.dart';
import 'package:touch_app/features/addresses/presentation/views/widgets/addresses_body.dart';

class AddressesView extends StatelessWidget {
  const AddressesView({super.key});
  static const String routeName = 'addresses';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context, title: 'العناوين'),
      body: const AddressesBody(),
    );
  }
}
