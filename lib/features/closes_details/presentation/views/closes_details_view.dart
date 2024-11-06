import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/features/closes_details/presentation/views/widgets/closes_details_body.dart';

class ClosesDetaailsView extends StatelessWidget {
  const ClosesDetaailsView({super.key});
  static const String routeName = 'closesdetailsview';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
     appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        toolbarHeight: 0,
        leading:const Visibility(visible: false,child: Icon(Icons.arrow_back_ios_new), ),
      ),
      body:const SafeArea(
        child: ClosesDetailsBody(),),
    );
  }
}