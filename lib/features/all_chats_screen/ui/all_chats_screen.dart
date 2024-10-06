import 'package:chat_app/core/component/TextFormFieldWidget.dart';
import 'package:chat_app/core/config/app_assets.dart';
import 'package:chat_app/core/config/app_colors.dart';
import 'package:chat_app/core/config/app_font_manager.dart';
import 'package:chat_app/core/config/app_size.dart';
import 'package:chat_app/core/config/text_style_manager.dart';
import 'package:chat_app/features/chat_screen/widgets/bottom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AllChatsScreen extends StatelessWidget {
  AllChatsScreen({super.key});
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: AppColors.mainBlackColor,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: AppColors.mainBlackColor,
        title: Text(
          'ChatGems',
          style:
              getBoldStyle(color: AppColors.whiteColor, size: AppFontSizes.s28),
        ),
        actions: [
          InkWell(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: SvgPicture.asset(IconAssets.create),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p18),
            child: TextFormFieldWidget(
              hint: 'Search a friend',
              controller: controller,
              prefixIcon: Icon(Icons.search),
            ),
          )
        ],
      ),
    ));
  }
}
