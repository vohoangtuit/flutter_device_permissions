import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_app/custom_widget/base.dart';
import 'package:flutter_app/custom_widget/normal_button.dart';
import 'package:image_picker/image_picker.dart';

class CameraAndFileScreen extends StatefulWidget {
  @override
  _CameraAndFileScreenState createState() => _CameraAndFileScreenState();
}

class _CameraAndFileScreenState extends State<CameraAndFileScreen> {
  File imageFile;
  @override
  void initState() {
    super.initState();
    print("initState initState");
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: baseAppBar('Camera & Gallery'),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: imageFile == null
                  ? Text(
                      'Please select Image',
                      style: textTextBlackMedium(),
                    )
                  : Image.file(
                      imageFile,
                      width: 200,
                      height: 200,
                    ),
            ),
            SizedBox(
              height: 50,
            ),
            NormalButton(
                onPressed: () {
                  cameraConnect();
                },
                title: 'From Camera'),
            SizedBox(
              height: 10,
            ),
            NormalButton(
                onPressed: () {
                  openGallery();
                },
                title: 'From Gallery'),
          ],
        ),
      ),
    );
  }

  //connect camera
  cameraConnect() async {
    // ignore: deprecated_member_use
    File img = await ImagePicker.pickImage(source: ImageSource.camera);
    if (img != null) {
      imageFile = img;
      setState(() {});
    }else{
      print("Null image cameraConnect");
    }
  }

  openGallery() async {
    var file= await ImagePicker.pickImage(source: ImageSource.gallery);
    if(file!=null){
      imageFile =file;
      setState(() {
      });
    }else{
      print("Null image openGallery");
    }
  }
}


