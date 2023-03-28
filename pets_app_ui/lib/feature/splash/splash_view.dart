import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

import '../../core/components/constants/colors/color_constants.dart';
import '../../core/components/constants/image/image_constants.dart';
import '../../core/components/constants/text/text_constants.dart';
import '../../products/components/widgets/elevated_button_widget.dart';
import '../../products/components/widgets/position_widget.dart';

part 'splash_part_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          _buildBlueOvalImage(context),
          _buildBigPurpleOvalImage(context),
          _buildOrangeOvalImage(context),
          _buildCatOvalImage(context),
          _buildSmallPurpleOvalImage(context),
          _buildHeartOvalImage(context),
          _buildPetAdoptionText(context),
          _buildLoremText(context),
          _buildGetStartedButton(context),
          _buildLoginButton(context),
        ],
      ),
    );
  }
}
