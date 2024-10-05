import 'package:chat_app/core/component/TextFormFieldWidget.dart';
import 'package:chat_app/core/config/app_assets.dart';
import 'package:chat_app/core/config/app_colors.dart';
import 'package:chat_app/core/config/app_size.dart';
import 'package:chat_app/core/config/app_spaces.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomTextField extends StatelessWidget {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Expand the TextFormField to take the available width
        Expanded(
          child: TextFormFieldWidget(
            hint: 'Add Reply Here',
            controller: controller,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: InkWell(
                  onTap: () {
                    print('hererererere');
                  },
                  child: CircleAvatar(
                    radius: 5,
                    backgroundColor: AppColors.orangeColor,
                    child: Icon(
                      Icons.add,
                      color: AppColors.whiteColor,
                    ),
                  )),
            ),
          ),
        ),
        // Add horizontal space between the TextFormField and the icon
        horizontalSpace(25),
        // Add padding around the icon if needed
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {},
            child: SvgPicture.asset(
              IconAssets.camera,
            ),
          ),
        ),
      ],
    );
  }
}
