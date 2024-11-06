import 'package:flutter/material.dart';

void showLogoutDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Text(' لمسة '),
            Image.asset(
              'assets/images/logo_3.png',
              width: 40,
              height: 40,
              fit: BoxFit.contain,
            )
          ],
        ),
        content: const Text(
          'هل تريد تسجيل الخروج؟',
          textAlign: TextAlign.end,
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: const Text(
              'لا',
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
              Navigator.pushNamed(context, 'loginView');
            },
            child: const Text(
              'نعم',
            ),
          ),
        ],
      );
    },
  );
}
