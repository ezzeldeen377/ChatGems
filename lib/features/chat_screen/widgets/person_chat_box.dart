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
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 8),
          child: CircleAvatar(
            radius: AppSize.s20,
            child: Image.asset(
              'assets/images/ahmed.png',
              width: double.infinity,
              fit: BoxFit.fill,
            ),
          ),
        ),
        IntrinsicWidth(
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: MediaQuery.of(context).size.width -
                  50, // Limit width for long text
            ),
            child: Container(
              alignment: Alignment.topLeft,
              margin: EdgeInsets.symmetric(
                  horizontal: AppMargin.m18, vertical: AppMargin.m5),
              padding: EdgeInsets.symmetric(
                  horizontal: AppPadding.p10, vertical: AppPadding.p10),
              decoration: BoxDecoration(
                  color: AppColors.lightBlackColor,
                  borderRadius: BorderRadius.circular(AppSize.s16)),
              child: Text(
                text,
                softWrap: true, // Enables text wrapping

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
