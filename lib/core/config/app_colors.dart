import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  static Color mainBlackColor = const Color(0xff1F1F1F);
  static Color lightBlackColor = const Color(0xff2C2C2C);
  static Color lighterBlackColor = const Color(0xff242424);
  static Color grayrColor = const Color(0xff333131);
  static Color orangeColor = const Color(0xffFE7439);
  static Color whiteColor = const Color(0xffEAF6FF);
  static LinearGradient orangeRedGradaintColor = const LinearGradient(
    colors: [
      Color(0xffFF4500),
      Color(0xffFF8C00),
    ],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  );
  static LinearGradient whiteBlackGradaintColor = LinearGradient(
    colors: [whiteColor, lightBlackColor],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  );
}
