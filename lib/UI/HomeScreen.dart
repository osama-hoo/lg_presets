import 'package:flutter/material.dart';
import 'package:lr_presets/Constants/Colors.dart';
import 'package:sizer/sizer.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAccentColor,
      appBar: AppBar(
        title: Text('Presets',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30.0.sp,
                color: kAccentColor)),
        centerTitle: false,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Container(
        height: 78.5.h,
        width: 100.0.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(25),
            bottomRight: Radius.circular(25),
          ),
        ),
      ),
    );
  }
}
