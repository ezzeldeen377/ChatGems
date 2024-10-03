import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  static Color mainBlackColor = const Color(0xff1F1F1F);
  static Color lightBlackColor = const Color(0xff2C2C2C);
  static Color lighterBlackColor = const Color(0xff2C2C2C);
  static Color orangeColor = const Color(0xffFE7439);
  static Color whiteColor = const Color(0xffEAF6FF);
  static LinearGradient orangeRedGradaintColor = const LinearGradient(
    colors: [
      Color(0xffFF4500), // Start color
      Color(0xffFF8C00), // End color
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}
