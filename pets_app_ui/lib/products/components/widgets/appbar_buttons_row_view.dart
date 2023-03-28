import 'package:flutter/material.dart';

import '../../../core/components/constants/image/image_constants.dart';

class AppBarButtonsRowView extends StatelessWidget {
  const AppBarButtonsRowView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          decoration: _buildShadowDecoration(),
          child: Image.asset(ImageConstants.instance.img_back.imagePath),
        ),
        Image.asset(ImageConstants.instance.img_blur_list.imagePath)
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
