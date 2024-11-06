import 'package:flutter/material.dart';
import 'package:touch_app/core/widgets/custom_order_container.dart';
import 'package:touch_app/features/home/presentation/views/widgets/charge_done.dart';
import 'package:touch_app/features/home/presentation/views/widgets/received_done.dart';
import 'package:touch_app/features/home/presentation/views/widgets/waiting_for_paying.dart';
import 'package:touch_app/features/home/presentation/views/widgets/waiting_to_prepare.dart';

class OrdersViewBody extends StatefulWidget {
  const OrdersViewBody({super.key});

  @override
  State<OrdersViewBody> createState() => _OrdersViewBodyState();
}

class _OrdersViewBodyState extends State<OrdersViewBody> {
  int selectedIndex = 0; // العنصر الافتراضي
  final PageController _pageController = PageController();

  final List<String> orderStatuses = const [
    'تم الإستلام',
    'تم الشحن',
    'قيد التحضير',
    'بإنتظار الدفع',
  ];
  final List<Widget> pages = const [
    ReceivedDone(),
    ChargeDone(),
    WaitingToPrepare(),
    WaitingForPaying(),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 16),
        // الجزء العلوي: ListView للعناصر القابلة للتحديد
        SizedBox(
          height: 50,
          width: double.infinity,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: orderStatuses.length,
            itemBuilder: (context, index) => Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: CustomOrderContainer(
                name: orderStatuses[index],
                isSelected: selectedIndex == index,
                onTap: () {
                  setState(() {
                    selectedIndex = index;
                    _pageController.jumpToPage(index); // تحديث PageView للصفحة المختارة
                  });
                },
              ),
            ),
          ),
        ),
        const SizedBox(height: 16),
        // الجسم: PageView للمحتوى المتغير
        Expanded(
          child: PageView.builder(
            controller: _pageController,
            onPageChanged: (index) {
              setState(() {
                selectedIndex = index; // تحديث selectedIndex عند التمرير للصفحة التالية
              });
            },
            itemCount: pages.length,
            itemBuilder: (context, index) {
              return pages[index];
            },
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
