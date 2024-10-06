import 'package:chat_app/core/component/TextFormFieldWidget.dart';
import 'package:chat_app/core/config/app_assets.dart';
import 'package:chat_app/core/config/app_colors.dart';
import 'package:chat_app/core/config/app_size.dart';
import 'package:chat_app/core/config/app_spaces.dart';
import 'package:chat_app/features/chat_screen/cubit/chat_screen_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomTextField extends StatefulWidget {
  @override
  State<BottomTextField> createState() => _BottomTextFieldState();
}

class _BottomTextFieldState extends State<BottomTextField> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Expand the TextFormField to take the available width
        Expanded(
          child: TextFormFieldWidget(
            hint: 'Add Reply Here',
            controller: ChatScreenCubit.get(context).controller,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                onTap: () {},
                child: CircleAvatar(
                  radius: 5,
                  backgroundColor: AppColors.orangeColor,
                  child: Icon(
                    Icons.add,
                    color: AppColors.whiteColor,
                  ),
                ),
              ),
            ),
          ),
        ),
        // Add horizontal space between the TextFormField and the icon
        horizontalSpace(5),
        // Add padding around the icon if needed
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              ChatScreenCubit.get(context).getMessage();
            },
            child: SvgPicture.asset(
              IconAssets.send,
              color: AppColors.orangeColor,
            ),
          ),
        ),
      ],
    );
  }
}
