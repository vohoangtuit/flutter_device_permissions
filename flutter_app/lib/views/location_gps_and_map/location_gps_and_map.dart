import 'package:flutter/material.dart';
import 'package:flutter_app/custom_widget/base.dart';

class LocationGPSAndMap extends StatefulWidget {
  @override
  _LocationGPSAndMap createState() => _LocationGPSAndMap();
}

class _LocationGPSAndMap extends State<LocationGPSAndMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: baseAppBar('Location,GPS and Map'),
    );
  }
}
