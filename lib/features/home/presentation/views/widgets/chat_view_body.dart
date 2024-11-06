import 'package:flutter/material.dart';
import 'package:touch_app/core/widgets/custom_chat_card.dart';

class ChatViewBody extends StatelessWidget {
  const ChatViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
           SizedBox(height: 32,),
           CustomChatCard(),
        ],
      ),
    );
  }
}