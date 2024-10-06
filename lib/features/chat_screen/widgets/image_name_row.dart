import 'package:chat_app/core/config/app_colors.dart';
import 'package:chat_app/core/config/app_font_manager.dart';
import 'package:chat_app/core/config/app_size.dart';
import 'package:chat_app/core/config/app_spaces.dart';
import 'package:chat_app/core/config/text_style_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ImageNameRow extends StatelessWidget {
  String name;
  String imagePath;
  ImageNameRow({super.key, required this.name, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: AppSize.s16,
          child: SvgPicture.asset(
            imagePath,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
        ),
        horizontalSpace(AppPadding.p10),
        Text(
          name,
          style:
              getBoldStyle(color: AppColors.whiteColor, size: AppFontSizes.s18),
        )
      ],
    );
  }
}
