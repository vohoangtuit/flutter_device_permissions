import 'package:flutter/material.dart';
import 'package:flutter_app/custom_widget/normal_button.dart';
import 'package:flutter_app/views/camera_and_flie/camera_and_file.dart';
import 'package:flutter_app/views/location_gps_and_map/location_gps_and_map.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Permissions',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Device Permissions'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            NormalButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>CameraAndFileScreen()));
            },title:'Camera & Gallery'),
            SizedBox(height: 10,),
            NormalButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>LocationGPSAndMap()));
            },title:'Location,GPS and Map'),
          ],
        ),
      ),
    );
  }
}
