import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/features/designer/presentation/views/widgets/designer_name_body.dart';

class DesignerNameView extends StatefulWidget {
  const DesignerNameView({super.key});
static const String routeName = 'DesignerNameView';

  @override
  State<DesignerNameView> createState() => _DesignerNameViewState();
}


class _DesignerNameViewState extends State<DesignerNameView> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      
     appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        toolbarHeight: 0,
        leading:const Visibility(visible: false,child: Icon(Icons.arrow_back_ios_new), ),
      ),
      body:const SafeArea(
        child: DesignerNameBody(),),
    );
  }
}