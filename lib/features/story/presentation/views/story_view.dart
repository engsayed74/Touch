import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:story_view/story_view.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class StoryViewPage extends StatefulWidget {
  @override
  _StoryViewPageState createState() => _StoryViewPageState();
}

class _StoryViewPageState extends State<StoryViewPage> {
  final StoryController controller = StoryController();
  bool _showButtons = false; // يتحكم في ظهور الأزرار

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          StoryView(
            storyItems: [
              StoryItem.text(
                title: "مرحبًا بك في قصتي!",
                backgroundColor: AppColors.primaryColor,
              ),
              StoryItem.inlineProviderImage(const AssetImage(
                'assets/images/woman.png',
              )),
              StoryItem.inlineProviderImage(const AssetImage(
                'assets/images/fruit.png',
              )),
              StoryItem.pageImage(
                url: "https://picsum.photos/800",
                imageFit: BoxFit.cover,
                controller: controller,
              ),
              StoryItem.pageVideo(
                "https://www.w3schools.com/html/mov_bbb.mp4",
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
                  Text(
                    '100',
                    style: AppTextStyle.bold14.copyWith(color: Colors.white),
                  ),
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
                  ),
                ],
              ),
            ),
          ),
          // السهم الجانبي
          if (!_showButtons)
            Positioned(
              right: -20, // اجعل السهم ملتصقًا بالحافة اليمنى
              top: MediaQuery.of(context).size.height / 2 -30.h,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _showButtons = true; // إظهار الأزرار وإخفاء السهم
                  });
                },
                child: Image.asset('assets/images/side_story.png',width: 60.w,height: 60.h,),
              ),
            ),
          // الأزرار الجانبية
          if (_showButtons)
            Positioned(
              right: 0, // اجعل الأزرار ملتصقة بالحافة اليمنى
              top: MediaQuery.of(context).size.height / 2 ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'closesdetailsview');
                      // ضع هنا أي إجراء للزر الأول
                    },
                    style: ElevatedButton.styleFrom(
                          minimumSize: Size(100.w, 30.h), // نفس الحجم للزر الثاني

                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        backgroundColor: AppColors.primaryColor,
                        foregroundColor: Colors.white),
                        
                    child: Text(
                      "عرض المنتج",
                      style: AppTextStyle.bold11,
                    ),
                  ),
                  SizedBox(height: 10.h),
                  ElevatedButton(
                    
                    onPressed: () {
                      Navigator.pushNamed(context, 'DesignerNameView');

                      // ضع هنا أي إجراء للزر الثاني
                    },
                    style: ElevatedButton.styleFrom(
                          minimumSize: Size(100.w, 30.h), // نفس الحجم للزر الثاني

                        padding:const EdgeInsets.symmetric(horizontal: 16),
                        backgroundColor: AppColors.primaryColor,
                        foregroundColor: Colors.white),
                    child: Text("عرض المصمم", style: AppTextStyle.bold11),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
