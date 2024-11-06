import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';
import 'package:touch_app/core/widgets/custom_elevated_button.dart';
import 'package:touch_app/features/basket/presentation/views/widgets/basket_card.dart';
import 'package:touch_app/features/basket/presentation/views/widgets/order_summary.dart';

class BasketBody extends StatefulWidget {
  const BasketBody({super.key});

  @override
  State<BasketBody> createState() => _BasketBodyState();
}

class _BasketBodyState extends State<BasketBody> {
  final TextEditingController _locationController = TextEditingController();

  Future<void> _navigateToMap(BuildContext context) async {
    final LatLng? selectedLocation =
        await Navigator.pushNamed<dynamic>(context, 'map');

    if (selectedLocation != null) {
      setState(() {
        _locationController.text =
            'Lat: ${selectedLocation.latitude}, Lng: ${selectedLocation.longitude}';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 32,
            ),
            const BasketCard(),
            const SizedBox(
              height: 32,
            ),
            const OrderSummary(),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, 'addresses'),
                  child: Text(
                    '   اختر العنوان',
                    style: AppTextStyle.bold18
                        .copyWith(color: AppColors.passwordColor),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.48,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'عنوان النوصيل',
                        style: AppTextStyle.bold18
                            .copyWith(color: AppColors.primaryColor),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Image.asset(
                        'assets/images/location_on_small.png',
                        color: AppColors.primaryColor,
                        width: 32,
                        height: 32,
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(context, 'addresses'),
              child: TextField(
                controller: _locationController,
                enabled: false,
                decoration: InputDecoration(
                    hintText: 'برجاء اختيار العنوان علي الخريطة',
                    hintTextDirection: TextDirection.rtl,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                      borderSide: const BorderSide(
                        width: 2,
                        color: Color(0xFFE6E9E9),
                      ),
                    )),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            CustomElevatedButton(
              text: 'شراء',
              onTap: () => Navigator.pushNamed(context, 'payment'),
            ),
            const SizedBox(
              height: 32,
            ),
          ],
        ),
      ),
    );
  }
}
