import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class PrivateOrderDetailsBody extends StatefulWidget {
  const PrivateOrderDetailsBody({super.key});

  @override
  State<PrivateOrderDetailsBody> createState() =>
      _PrivateOrderDetailsBodyState();
}

class _PrivateOrderDetailsBodyState extends State<PrivateOrderDetailsBody> {
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
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () => _navigateToMap(context),
                  child: Image.asset(
                    'assets/images/location_on_small.png',
                    color: AppColors.primaryColor,
                    width: 32,
                    height: 32,
                  ),
                ),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width * 0.65,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'عنوان النوصيل',
                        style: AppTextStyle.bold18
                            .copyWith(color: AppColors.primaryColor),
                      ),
                      const SizedBox(width: 4,),
                      Text(
                        '   اختر العنوان',
                        style: AppTextStyle.bold18
                            .copyWith(color: AppColors.passwordColor),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
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
            const SizedBox(
              height: 16,
            ),
            Text(
              'العنوان',
              style:
                  AppTextStyle.bold18.copyWith(color: AppColors.primaryColor),
            ),
            const SizedBox(
              height: 16,
            ),
            TextField(
              decoration: InputDecoration(
                  hintText: 'عنوان طلبك',
                  hintTextDirection: TextDirection.rtl,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: const BorderSide(
                      width: 2,
                      color: Color(0xFFE6E9E9),
                    ),
                  )),
            ),
            const SizedBox(
              height: 16,
            ),
            Text(
              'وصف المنتج',
              style:
                  AppTextStyle.bold18.copyWith(color: AppColors.primaryColor),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              padding: const EdgeInsets.all(16),
              height: 170,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey.withOpacity(.3),
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'تفاصيل المنتج',
                  hintTextDirection: TextDirection.rtl,
                  border: InputBorder.none,
                ),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: SizedBox(
                    width: 200,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(vertical: 12),
                          foregroundColor: Colors.white,
                          backgroundColor: AppColors.primaryColor),
                      onPressed: () {},
                      child:  Text(
                        'تاكيد الطلب',
                        style: AppTextStyle.bold22,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
