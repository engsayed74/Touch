import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class StoryViewPage extends StatelessWidget {
  final StoryController controller = StoryController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        StoryView(
          storyItems: [
            // قصة نصية
            StoryItem.text(
              title: "مرحبًا بك في قصتي!",
              backgroundColor: AppColors.primaryColor,
            ),

            StoryItem.inlineProviderImage(const AssetImage(
              'assets/images/woman.png',
            )),
            StoryItem.inlineProviderImage(const AssetImage(
              'assets/images/fruit.png',
            )), // قصة صورة
            StoryItem.pageImage(
              url: "https://picsum.photos/800",

              imageFit: BoxFit.cover, // رابط صورة مؤكد
              controller: controller,
            ),
            // قصة فيديو
            StoryItem.pageVideo(
              "https://www.w3schools.com/html/mov_bbb.mp4", // رابط فيديو مؤكد
              controller: controller,
              imageFit: BoxFit.cover,
            ),
          ],
          controller: controller,
          repeat: false,
          onComplete: () {
            Navigator.pop(context);
          },
        ),
        Positioned(
          right: 15,
          left: 15,
          bottom: 50,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.black54,
              borderRadius: BorderRadius.circular(16),
            ),
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  '3',
                  style: AppTextStyle.bold14.copyWith(color: Colors.white),
                ),
                const Icon(Icons.favorite, color: Colors.red),
                Text('100',
                    style: AppTextStyle.bold14.copyWith(color: Colors.white)),
                const Icon(
                  Icons.remove_red_eye_outlined,
                  color: Colors.white,
                ),
                const SizedBox(width: 10),
                Text(
                  "تصميمات ليلي",
                  style: AppTextStyle.bold14.copyWith(color: Colors.white),
                ),
                Image.asset(
                  'assets/images/woman.png',
                  width: 80,
                  height: 80,
                  fit: BoxFit.cover,
                )
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
