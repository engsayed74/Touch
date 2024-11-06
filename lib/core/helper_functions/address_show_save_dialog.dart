import 'package:flutter/material.dart';

void showSaveAddressDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title:const Align(
          alignment: Alignment.centerRight,
          child:  Text('خطأ')),
        content: const Text(
          'يرجي ادخال العنوان علي الخريطة',
          textAlign: TextAlign.center,
        ),
        actions: [
         
          Align(
            alignment: Alignment.bottomLeft,
            child: TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Close the dialog
              },
              child: const Text(
                'موافق',
              ),
            ),
          ),
        ],
      );
    },
  );
}
