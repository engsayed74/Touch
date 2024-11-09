import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:touch_app/core/helper_functions/address_show_save_dialog.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';
import 'package:touch_app/core/widgets/custom_text_field.dart';

class AddNewAddressBody extends StatefulWidget {
  const AddNewAddressBody({super.key});

  @override
  State<AddNewAddressBody> createState() => _AddNewAddressBodyState();
}

class _AddNewAddressBodyState extends State<AddNewAddressBody> {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  late String phone, password;

  final TextEditingController _locationController = TextEditingController();
  final TextEditingController cityControler = TextEditingController();

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
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: formKey,
          child: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              CustomTextFormField(
                controller: cityControler,
                hintText: 'المدينة',
                textInputType: TextInputType.name,
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomTextFormField(
                hintText: 'العنوان',
                textInputType: TextInputType.name,
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomTextFormField(
                hintText: 'علامة مميزة',
                textInputType: TextInputType.name,
              ),
              const SizedBox(
                height: 16,
              ),
              const CustomTextFormField(
                hintText: 'اسم او رقم المبني',
                textInputType: TextInputType.name,
              ),
              const SizedBox(
                height: 16,
              ),
              GestureDetector(
                onTap: () => _navigateToMap(context),
                child: CustomTextFormField(
                  controller: _locationController,
                  enabled: false,
                  hintText: 'العنوان علي الخريطة',
                  textInputType: TextInputType.name,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              SizedBox(
                width: 200,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 12),
                      foregroundColor: Colors.white,
                      backgroundColor: AppColors.primaryColor),
                  onPressed: () {
                    if (cityControler.text.isEmpty) {
                      showSaveAddressDialog(context);
                    } else {
                      Navigator.pop(context);
                    }
                    /* if (formKey.currentState!.validate()) {
                      formKey.currentState!.save();
                     Navigator.pop(context);
                    
                    } else {
                      // Show a message or handle invalid form case
                      showSaveAddressDialog(context);
                    }
                        */
                  },
                  child:  Text(
                    'حفظ',
                    style: AppTextStyle.bold22,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
