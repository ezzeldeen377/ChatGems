import 'package:flutter/material.dart';

class ImageNameRow extends StatelessWidget {
  String name;
  String imagePath;
  ImageNameRow({super.key, required this.name, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [CircleAvatar()],
    );
  }
}
