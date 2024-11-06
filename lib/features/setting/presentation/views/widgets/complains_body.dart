import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class ComplainsBody extends StatelessWidget {
  const ComplainsBody({super.key});

   Future<void> _pickFile() async {
    final result = await FilePicker.platform.pickFiles();
    if (result != null) {
      // You can access the selected file here
      final file = result.files.single;
      // Handle file upload or processing as needed
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(
              height: 16,
            ),
            SizedBox(
              width: 204,
              height: 170,
              child: Image.asset(
                'assets/images/logo_1.png',
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Card(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(.1),
                  borderRadius: BorderRadius.circular(16),
                ),
                height: 300,
                child: Center(
                    child: Text(
                  'لا يوجد محادثات',
                  style:
                      AppTextStyle.bold22.copyWith(color: AppColors.primaryColor),
                  textAlign: TextAlign.center,
                )),
              ),
            ),
            const SizedBox(height: 32,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration:const BoxDecoration(
                    color: AppColors.primaryColor,
                    shape: BoxShape.circle
                  ),
                  child: Image.asset('assets/images/send.png',width: 20,height: 20,color: Colors.white,),
                ),
                GestureDetector(
                  onTap: () => _pickFile(),
                  child: Image.asset('assets/images/attatchments.png',width: 30,height: 35,)),
                Container(
                  padding: const EdgeInsets.only(right: 16),
                  width: 230,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(.1),
                    borderRadius: BorderRadius.circular(24),
                ),
                child: TextField(
                  
                  textAlign: TextAlign.end,
                  
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'اكنب رسالتك',
                    hintStyle: AppTextStyle.regular14.copyWith(color: AppColors.primaryColor),
                  ),
                ),
                )
                
                    
              ],
            )
          ],
        ),
      ),
    );
  }
}
