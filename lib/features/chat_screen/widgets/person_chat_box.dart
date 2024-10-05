import 'package:chat_app/core/config/app_colors.dart';
import 'package:chat_app/core/config/app_font_manager.dart';
import 'package:chat_app/core/config/app_size.dart';
import 'package:chat_app/core/config/text_style_manager.dart';
import 'package:flutter/material.dart';

class PersonChatBox extends StatelessWidget {
  String text;
  PersonChatBox({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: AppMargin.m18, vertical: AppMargin.m5),
      padding: EdgeInsets.symmetric(
          horizontal: AppPadding.p10, vertical: AppPadding.p10),
      decoration: BoxDecoration(
          color: AppColors.lightBlackColor,
          borderRadius: BorderRadius.circular(AppSize.s16)),
      child: Text(
        text,
        style: getRegularStyle(
            color: AppColors.whiteColor, size: AppFontSizes.s16),
      ),
    );
  }
}
