import 'package:flutter/material.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';
import 'package:touch_app/core/widgets/custom_elevated_button.dart';
import 'package:touch_app/features/payment/presentation/views/widgets/discount_code.dart';
import 'package:touch_app/features/payment/presentation/views/widgets/payment_order_summary.dart';

class PaymentBody extends StatefulWidget {
  const PaymentBody({super.key});

  @override
  State<PaymentBody> createState() => _PaymentBodyState();
}

class _PaymentBodyState extends State<PaymentBody> {
  bool isChecked1 = false;
  bool isChecked2 = false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Card(
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
             
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                const SizedBox(
                  height: 32,
                ),
                Text(
                  'اختر طريقة الدفع',
                  style:
                      AppTextStyle.bold18.copyWith(color: AppColors.primaryColor),
                ),
                const SizedBox(
                  height: 16,
                ),
                Card(
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border:
                          Border.all(color: Colors.grey.withOpacity(.2), width: 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Transform.scale(
                                scale: 1.5,
                                child: Checkbox(
                                  value: isChecked1,
                                  onChanged: (value) {
                                    setState(() {
                                      isChecked1 = value ?? false;
                                      if (isChecked1) {
                                        isChecked2 = false;
                                      }
                                    });
                                  },
                                  shape: const CircleBorder(),
                                ),
                              ),
                              Image.asset(
                                'assets/images/master.png',
                                width: 30,
                                height: 30,
                              ),
                              Image.asset(
                                'assets/images/mada.png',
                                width: 30,
                                height: 30,
                              ),
                              Image.asset(
                                'assets/images/visa.png',
                                width: 30,
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.4,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'الدفع الألكترونى',
                                style: AppTextStyle.bold14
                                    .copyWith(color: AppColors.primaryColor),
                              ),
                              Image.asset(
                                'assets/images/web_icon.png',
                                width: 40,
                                height: 40,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Card(
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border:
                          Border.all(color: Colors.grey.withOpacity(.2), width: 1),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Transform.scale(
                          scale: 1.5,
                          child: Checkbox(
                            value: isChecked2,
                            onChanged: (value) {
                              setState(() {
                                isChecked2 = value ?? false;
                                if (isChecked2) {
                                  isChecked1 = false;
                                }
                              });
                            },
                            shape: const CircleBorder(),
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.sizeOf(context).width * 0.3,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Image.asset(
                                'assets/images/stc.png',
                                width: 40,
                                height: 40,
                              ),
                              Image.asset(
                                'assets/images/mobile_house.png',
                                width: 40,
                                height: 40,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                const DiscountCode(),
                const SizedBox(
                  height: 32,
                ),
                const PaymentOrderSummary(),
                const SizedBox(
                  height: 32,
                ),
                CustomElevatedButton(
                  text: 'تاكيد الطلب',
                  onTap: () {
                    Navigator.pushNamed(context, 'confirmOrder');
                  },
                ),
                const SizedBox(
                  height: 32,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
