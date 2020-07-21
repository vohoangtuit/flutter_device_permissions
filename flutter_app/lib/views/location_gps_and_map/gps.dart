import 'package:flutter/material.dart';
import 'package:flutter_app/custom_widget/base.dart';

class GPS extends StatefulWidget {
  @override
  _GPS createState() => _GPS();
}

class _GPS extends State<GPS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: baseAppBar('GPS'),
    );
  }
}
