import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class AddressesBody extends StatelessWidget {
  const AddressesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        left: 50,
        right: 50,
        top: 50,
        bottom: 50,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'عفوا ',
              style:
                  AppTextStyle.bold18.copyWith(color: AppColors.primaryColor),
            ),
            Text(
              ' لا يوجد عناوين مضافة ',
              style:
                  AppTextStyle.bold18.copyWith(color: AppColors.primaryColor),
            ),
          ],
        ),
      ),
      Positioned(
        left: 0,
        bottom: 20,
        child: IconButton(
          onPressed: () {

            Navigator.pushNamed(context, 'AddNewAddressView');
          },
          icon: const Padding(
            padding: EdgeInsets.only(left: 32),
            child: Align(
              alignment: AlignmentDirectional.bottomStart,
              child: CircleAvatar(
                backgroundColor: AppColors.primaryColor,
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ),
          ),
        ),
      ),
    ]);
  }
}
