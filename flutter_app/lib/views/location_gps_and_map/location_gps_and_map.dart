import 'package:flutter/material.dart';
import 'package:flutter_app/custom_widget/base.dart';
import 'package:flutter_app/custom_widget/normal_button.dart';
import 'package:flutter_app/views/location_gps_and_map/gps.dart';
import 'package:flutter_app/views/location_gps_and_map/location.dart';
import 'package:flutter_app/views/location_gps_and_map/map.dart';

class LocationGPSAndMap extends StatefulWidget {
  @override
  _LocationGPSAndMap createState() => _LocationGPSAndMap();
}

class _LocationGPSAndMap extends State<LocationGPSAndMap> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: baseAppBar('Location,GPS and Map'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            NormalButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Location()));
            },title:'Location'),

            SizedBox(height: 10,),

            NormalButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>GPS()));
            },title:'GPS'),

            SizedBox(height: 10,),

            NormalButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>Map()));
            },title:'Map'),
          ],
        ),
      ),
    );
  }
}
