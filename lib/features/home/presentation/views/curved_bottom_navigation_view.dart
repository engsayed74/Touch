import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/features/home/presentation/views/alerts_view.dart';
import 'package:touch_app/features/home/presentation/views/home_view.dart';
import 'package:touch_app/features/home/presentation/views/orders_view.dart';
import 'package:touch_app/features/home/presentation/views/person_view.dart';
import 'package:touch_app/features/home/presentation/views/chat_view.dart';

class CurvedBottomNavigation extends StatefulWidget {
  const CurvedBottomNavigation({super.key});
  static const String routeName = 'curvedBottomNAvigation';

  @override
  State<CurvedBottomNavigation> createState() => _CurvedBottomNavigationState();
}

class _CurvedBottomNavigationState extends State<CurvedBottomNavigation> {
  int selectedindex = 4;
  final GlobalKey<CurvedNavigationBarState> _bottomNavigationKey = GlobalKey();
  final List<Widget> _pages = [
    const OrdersView(),
    const ChatView(),
    const PersonView(),
    const AlertsView(),
    const HomeView(),
  ];

   final List<Widget> item1 = [
     Image.asset('assets/images/list_gray.png', width: 20, height: 24),
    Image.asset('assets/images/message.png', width: 20, height: 24),
    Image.asset('assets/images/person_gray.png', width: 20, height: 24),
    Image.asset('assets/images/notifications_gray.png', width: 20, height: 24),
    Image.asset('assets/images/home_gray.png', width: 20, height: 24),
  ];
  final List<Widget> item2 = [
    Image.asset('assets/images/list_color.png', width: 20, height: 24),
    Image.asset('assets/images/chat.png', width: 20, height: 24),
    Image.asset('assets/images/perosn.png', width: 20, height: 24),
    Image.asset('assets/images/notifications_color.png', width: 20, height: 24),
    Image.asset('assets/images/home_color.png', width: 20, height: 24),
  ];
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[selectedindex],
      bottomNavigationBar: CurvedNavigationBar(
        color: Colors.grey.withOpacity(.3),
        key: _bottomNavigationKey,
        index: selectedindex,
        backgroundColor: AppColors.primaryColor.withOpacity(.1),
        buttonBackgroundColor: Colors.white,
        animationDuration: Duration(milliseconds: 600),
        animationCurve: Curves.easeInOut,
        items: List.generate(
          item1.length,
          (index) {
            return selectedindex == index ? item2[index] : item1[index];
          },
        ), // تغيير الأيقونة بناءً على الفهرس
        onTap: (index) {
          //Handle button tap

          setState(() {
            selectedindex = index;
          });
        },
        letIndexChange: (index) => true,
      ),
    );
  }
}
