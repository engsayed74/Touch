import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geocoding/geocoding.dart';
import 'package:touch_app/core/utils/app_colors.dart';
import 'package:touch_app/core/utils/app_text_style.dart';

class MapViewBody extends StatefulWidget {
  const MapViewBody({super.key});

  @override
  State<MapViewBody> createState() => _MapViewBodyState();
}

class _MapViewBodyState extends State<MapViewBody> {
  late GoogleMapController _mapController;
  final Set<Marker> _markers = {};
  final LatLng _initialPosition = const LatLng(24.7136, 46.6753); // الرياض
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _addInitialMarker();
  }

  void _addInitialMarker() {
    setState(() {
      _markers.add(
        Marker(
          markerId: const MarkerId('الرياض'),
          position: _initialPosition,
          infoWindow: InfoWindow(
            title: "الرياض - السعوديه",
            onTap: () => _showLocationDialog("الرياض", _initialPosition),
          ),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        ),
      );
    });
  }

  void _onMapCreated(GoogleMapController controller) {
    _mapController = controller;
  }

  Future<void> _searchLocation() async {
    String place = _searchController.text;
    if (place.isEmpty) return;

    try {
      List<Location> locations = await locationFromAddress(place);
      if (locations.isNotEmpty) {
        Location location = locations.first;
        LatLng target = LatLng(location.latitude, location.longitude);

        setState(() {
          _markers.clear();
          _markers.add(
            Marker(
              markerId: MarkerId(place),
              position: target,
              infoWindow: InfoWindow(
                title: place,
                onTap: () => _showLocationDialog(place, target),
              ),
              icon: BitmapDescriptor.defaultMarkerWithHue(
                  BitmapDescriptor.hueRed),
            ),
          );
        });

        _mapController.animateCamera(
          CameraUpdate.newCameraPosition(
            CameraPosition(target: target, zoom: 12),
          ),
        );
      }
    } catch (e) {
      print("Error: $e");
    }
  }

  void _showLocationDialog(String place, LatLng position) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(place),
        content:
            Text("Coordinates: ${position.latitude}, ${position.longitude}"),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.pop(
                    context, position); // يعيد الـ LatLng للصفحة السابقة
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                decoration: BoxDecoration(
                  color: AppColors.primaryColor,
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Text('تاكيد الموقع',
                    style: AppTextStyle.bold16.copyWith(
                      color: Colors.white,
                    )),
              )),
        ],
      ),
    );
  }

  void _onMapTap(LatLng position) {
    setState(() {
      _markers.clear();
      _markers.add(
        Marker(
          markerId: const MarkerId('tapped_location'),
          position: position,
          infoWindow: InfoWindow(
            title: 'Selected Location',
            onTap: () => _showLocationDialog('Selected Location', position),
          ),
          icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueRed),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition:
              CameraPosition(target: _initialPosition, zoom: 12),
          markers: _markers,
          onTap: _onMapTap, // Add the onTap callback here
        ),
        Positioned(
          top: 50,
          left: 10,
          child: Image.asset(
            'assets/images/location_on_small.png',
            color: AppColors.primaryColor,
            width: 40,
            height: 40,
          ),
        ),
        Positioned(
          top: 50,
          left: 80,
          right: 80,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24),
              color: Colors.white,
            ),
            child: TextField(
              controller: _searchController,
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(12),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.search),
                  color: Colors.grey,
                  onPressed: _searchLocation,
                ),
                hintText: 'ابحث عن الموقع',
                hintStyle: AppTextStyle.regular16.copyWith(color: Colors.grey),
                hintTextDirection: TextDirection.rtl,
                border: InputBorder.none,
              ),
              onSubmitted: (_) => _searchLocation(),
            ),
          ),
        ),
        Positioned(
          top: 50,
          right: 10,
          child: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_forward,
              color: AppColors.primaryColor,
              size: 40,
            ),
          ),
        ),
      ],
    );
  }
}
