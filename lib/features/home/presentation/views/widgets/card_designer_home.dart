import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class DesignerCard extends StatelessWidget {
  const DesignerCard({super.key});
  final List<String> imglist=const[
    'assets/images/woman.png',
    'assets/images/woman2.png',
    'assets/images/man.png',
      'assets/images/woman.png',
    'assets/images/woman2.png',
    'assets/images/man.png',
  ];
  final List<String> textlist=const[
    'مى أحمد','سمية','جين',
    'مى أحمد','سمية','جين',
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder:  (context, index) => Padding(
      padding:const  EdgeInsets.symmetric(horizontal: 4),
      child:  CardDesignerBody(
        image: imglist[index],
        text: textlist[index],
      ),
    ),
    
     itemCount: imglist.length, scrollDirection: Axis.horizontal,);
  }
}

class CardDesignerBody extends StatelessWidget {
  const CardDesignerBody({
    super.key, required this.image, required this.text,
  });
final String image;
final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 85,
      height: 106,
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.primaryColor.withOpacity(.3), width: 1),
        borderRadius: BorderRadius.circular(16),
      ),
      child:Column(
       mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(image,fit: BoxFit.cover,width: 80,height: 82,),
          Text(text,style: AppTextStyle.bold11.copyWith(color: AppColors.namepersonColor),),
          const SizedBox(height: 4,)
        ],
      )
    );
  }
}
