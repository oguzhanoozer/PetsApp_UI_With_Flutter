import 'package:flutter/material.dart';

import '../../../core/components/constants/image/image_constants.dart';

class SocialButtonWidget extends ClipOval {
  SocialButtonWidget({required this.imagePath, super.key})
      : super(child: Image.asset(imagePath));
  final String imagePath;
}

class CreateSocialButtonList {
  static List<Widget> socialButtonList = [
    SocialButtonWidget(
        imagePath: ImageConstants.instance.img_facebook.imagePath),
    SocialButtonWidget(
        imagePath: ImageConstants.instance.img_twitter.imagePath),
    SocialButtonWidget(
        imagePath: ImageConstants.instance.img_instagram.imagePath)
  ];
}
