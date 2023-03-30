import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../../core/components/constants/image/image_constants.dart';

class SocialButtonWidget extends ClipOval {
  SocialButtonWidget({required this.imagePath, super.key})
      : super(child: Image.asset(imagePath));
  final String imagePath;
}

class CreateSocialButtonList {
  static List<Widget> socialButtonList(BuildContext context) {
    return [
      SocialButtonWidget(
          imagePath: ImageConstants.instance.img_facebook.imagePath),
      context.emptySizedWidthBoxNormal,
      SocialButtonWidget(
          imagePath: ImageConstants.instance.img_twitter.imagePath),
      context.emptySizedWidthBoxNormal,
      SocialButtonWidget(
          imagePath: ImageConstants.instance.img_instagram.imagePath),
    ];
  }
}
