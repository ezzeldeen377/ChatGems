import 'package:chat_app/core/config/app_colors.dart';
import 'package:chat_app/core/config/app_font_manager.dart';
import 'package:chat_app/core/config/app_size.dart';
import 'package:chat_app/core/config/text_style_manager.dart';
import 'package:flutter/material.dart';

typedef MyValidator = String? Function(String?);

class TextFormFieldWidget extends StatefulWidget {
  String hint;
  Widget? suffixIcon;
  Widget? prefixIcon;
  bool? obscureText;
  MyValidator? validator;
  TextEditingController controller;
  bool show;
  ImageIcon? SuffixIconShowed;
  TextFormFieldWidget(
      {required this.hint,
      this.suffixIcon,
      this.obscureText,
      this.validator,
      this.show = false,
      this.SuffixIconShowed,
      this.prefixIcon,
      required this.controller});

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      obscureText: widget.obscureText ?? false,
      validator: widget.validator,
      style:
          getRegularStyle(color: AppColors.whiteColor, size: AppFontSizes.s14),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: AppPadding.p10),
        suffixIcon: widget.suffixIcon,
        hintText: widget.hint,
        hintStyle: getLightStyle(
            color: AppColors.whiteColor.withOpacity(.5),
            size: AppFontSizes.s14),
        filled: true,
        fillColor: AppColors.grayrColor,
        prefixIcon: widget.prefixIcon,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.grayrColor,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(20)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AppColors.orangeColor,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
