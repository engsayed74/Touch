import 'package:flutter/material.dart';
import 'package:touch_app/features/map/presentation/views/widgets/map_view_body.dart';

class MapView extends StatefulWidget {
  const MapView({super.key});

  static const String routeName = 'map';

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MapViewBody(),
    );
  }
}
