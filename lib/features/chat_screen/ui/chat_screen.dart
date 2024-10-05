import 'package:chat_app/core/config/app_assets.dart';
import 'package:chat_app/core/config/app_colors.dart';
import 'package:chat_app/core/config/app_size.dart';
import 'package:chat_app/core/config/app_spaces.dart';
import 'package:chat_app/features/chat_screen/widgets/bottom_text_field.dart';
import 'package:chat_app/features/chat_screen/widgets/image_name_row.dart';
import 'package:chat_app/features/chat_screen/widgets/my_chat_box.dart';
import 'package:chat_app/features/chat_screen/widgets/person_chat_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ChatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: AppColors.mainBlackColor,
        appBar: AppBar(
          backgroundColor: AppColors.mainBlackColor,
          leading: Icon(
            Icons.arrow_back,
            color: AppColors.whiteColor,
          ),
          title: ImageNameRow(
              name: 'ezzeldeen', imagePath: ImageAssets.ahmedPicture),
          actions: [
            SvgPicture.asset(IconAssets.videoCall),
            horizontalSpace(AppPadding.p10),
            SvgPicture.asset(IconAssets.call),
            horizontalSpace(AppMargin.m18),
          ],
        ),
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Column(
            children: [
              // Expanded to ensure chat content is scrollable and takes remaining space
              Expanded(
                child: ListView(
                  padding: EdgeInsets.all(10),
                  children: [
                    MyChatBox(
                      text:
                          'Hey I’m starting out on the new project that you have assigned to me! 😇',
                    ),
                    PersonChatBox(text: 'Good thing to know that'),
                    MyChatBox(
                      text:
                          'Hey I’m starting out on the new project that you have assigned to me! 😇',
                    ),
                    PersonChatBox(text: 'Good thing to know that'),
                    MyChatBox(
                      text:
                          'Hey I’m starting out on the new project that you have assigned to me! 😇',
                    ),
                    PersonChatBox(text: 'Good thing to know that'),
                    MyChatBox(
                      text:
                          'Hey I’m starting out on the new project that you have assigned to me! 😇',
                    ),
                    PersonChatBox(text: 'Good thing to know that'),
                    MyChatBox(
                      text:
                          'Hey I’m starting out on the new project that you have assigned to me! 😇',
                    ),
                    PersonChatBox(text: 'Good thing to know that'),
                    MyChatBox(
                      text:
                          'Hey I’m starting out on the new project that you have assigned to me! 😇',
                    ),
                    PersonChatBox(text: 'Good thing to know that'),
                    // Add more chat messages if needed
                  ],
                ),
              ),
              // Bottom TextField remains at the bottom, not part of scrollable content
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: BottomTextField(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
