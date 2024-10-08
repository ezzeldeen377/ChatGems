import 'package:chat_app/core/config/app_colors.dart';
import 'package:chat_app/core/config/app_font_manager.dart';
import 'package:chat_app/core/config/app_size.dart';
import 'package:chat_app/core/config/text_style_manager.dart';
import 'package:flutter/material.dart';

class MyChatBox extends StatelessWidget {
  String text;
  MyChatBox({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        IntrinsicWidth(
          child: ConstrainedBox(
            constraints:
                BoxConstraints(maxWidth: MediaQuery.of(context).size.width),
            child: Container(
              margin: const EdgeInsets.symmetric(
                  horizontal: AppMargin.m18, vertical: AppMargin.m5),
              padding: const EdgeInsets.symmetric(
                  horizontal: AppPadding.p10, vertical: AppPadding.p10),
              decoration: BoxDecoration(
                  gradient: AppColors.orangeRedGradaintColor,
                  borderRadius: BorderRadius.circular(AppSize.s16)),
              child: Text(
                text,
                style: getRegularStyle(
                    color: AppColors.whiteColor, size: AppFontSizes.s16),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
