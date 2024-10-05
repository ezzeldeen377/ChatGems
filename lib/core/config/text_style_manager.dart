import 'package:chat_app/core/config/app_font_manager.dart';
import 'package:flutter/painting.dart';

TextStyle getTextStyle(double size, FontWeight fontWeight, Color color,
    {TextDecoration decoration = TextDecoration.none}) {
  return TextStyle(
      fontSize: size,
      fontWeight: fontWeight,
      fontFamily: FontFamily.roboto,
      color: color,
      decoration: decoration);
}

TextStyle getLightStyle(
    {double size = AppFontSizes.s12,
    required Color color,
    TextDecoration decoration = TextDecoration.none}) {
  return getTextStyle(size, FontWeightManager.light, color,
      decoration: decoration);
}

TextStyle getRegularStyle(
    {double size = AppFontSizes.s12,
    required Color color,
    TextDecoration decoration = TextDecoration.none}) {
  return getTextStyle(size, FontWeightManager.regular, color,
      decoration: decoration);
}

TextStyle getMediumStyle(
    {double size = AppFontSizes.s12,
    required Color color,
    TextDecoration decoration = TextDecoration.none}) {
  return getTextStyle(size, FontWeightManager.medium, color,
      decoration: decoration);
}

TextStyle getSemiBoldStyle(
    {double size = AppFontSizes.s12,
    required Color color,
    TextDecoration decoration = TextDecoration.none}) {
  return getTextStyle(size, FontWeightManager.semiBold, color,
      decoration: decoration);
}

TextStyle getBoldStyle(
    {double size = AppFontSizes.s12,
    required Color color,
    TextDecoration decoration = TextDecoration.none}) {
  return getTextStyle(size, FontWeightManager.bold, color,
      decoration: decoration);
}
