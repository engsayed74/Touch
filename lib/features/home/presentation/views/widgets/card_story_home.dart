import 'package:flutter/material.dart';
import 'package:touch_app/features/story/presentation/views/story_view.dart';

class StoryCard extends StatelessWidget {
  const StoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const Padding(
        padding:  EdgeInsets.symmetric(horizontal: 4),
        child:  StoryCardBody(),
      );
    }
    ,itemCount: 5,
    scrollDirection: Axis.horizontal,
    
    )
    ;
  }
}

class StoryCardBody extends StatelessWidget {
  const StoryCardBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 97,width: 93,
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(.3),
        borderRadius: BorderRadius.circular(8)
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) =>  StoryViewPage(),));
        },
        child: Image.asset('assets/images/fruit.png',fit: BoxFit.cover,)),
    );
  }
}