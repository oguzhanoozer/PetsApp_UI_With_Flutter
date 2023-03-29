// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/components/constants/image/image_constants.dart';

class AppBarButtonsRowView extends StatelessWidget {
  const AppBarButtonsRowView({
    Key? key,
    this.isAddProfileImageHolder = false,
    this.iconData = false,
  }) : super(key: key);

  final bool isAddProfileImageHolder;
  final bool iconData;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: _buildShadowDecoration(),
          child: Image.asset(ImageConstants.instance.img_back.imagePath),
        ),
        isAddProfileImageHolder
            ? Image.asset(
                ImageConstants.instance.img_your_image.imagePath,
                height: context.dynamicHeight(0.13),
              )
            : const SizedBox.shrink(),
        Image.asset(!iconData
            ? ImageConstants.instance.img_blur_list.imagePath
            : ImageConstants.instance.img_socials.imagePath)
      ],
    );
  }

  BoxDecoration _buildShadowDecoration() {
    return BoxDecoration(boxShadow: [
      BoxShadow(
          color: Colors.grey.shade300,
          blurRadius: 10,
          offset: const Offset(0, 10))
    ]);
  }
}
