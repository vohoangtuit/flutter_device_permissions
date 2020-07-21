import 'package:flutter/material.dart';
import 'package:flutter_app/custom_widget/base.dart';
import 'package:flutter_app/custom_widget/normal_button.dart';
import 'package:geolocator/geolocator.dart';

class Location extends StatefulWidget {
  @override
  _Location createState() => _Location();
}

class _Location extends State<Location> {
   Position _currentPosition;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: baseAppBar('Location'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            NormalButton(title: 'Find Location', onPressed: (){
              _getCurrentLocation();
            },),
            SizedBox(height: 50,),
            Text(_currentPosition==null?'your location':
            _currentPosition.latitude.toString()+":"+_currentPosition.longitude.toString()+"\n"
              +_currentPosition.timestamp.toString()+"\n"+_currentPosition.mocked.toString()+"\n"
              +_currentPosition.accuracy.toString()+"\n"+_currentPosition.altitude.toString()+"\n"
              +_currentPosition.heading.toString()+"\n"+_currentPosition.speed.toString()+"\n"
              +_currentPosition.speedAccuracy.toString()
              ,style: textTextBlackMedium(),),
          ],
        ),
      ),
    );
  }
  _getCurrentLocation()async{
    final position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    print("position "+position.latitude.toString()+" "+position.longitude.toString());
    if(position!=null){
      setState(() {
        _currentPosition =position;
      });
    }else{
      print("position is null");
    }
  }
}
