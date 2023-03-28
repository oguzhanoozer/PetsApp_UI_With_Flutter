import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:pets_app_ui/core/components/constants/image/image_constants.dart';
import 'package:pets_app_ui/core/components/constants/text/text_constants.dart';

import '../products/components/widgets/appbar_buttons_row_view.dart';
import '../products/components/widgets/padding_page_view.dart';

class CongratulationView extends StatefulWidget {
  const CongratulationView({super.key});

  @override
  State<CongratulationView> createState() => _CongratulationViewState();
}

class _CongratulationViewState extends State<CongratulationView> {
  @override
  Widget build(BuildContext context) {
    return PaddingPageView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const AppBarButtonsRowView(),
            const Expanded(child: SizedBox.shrink()),
            _buildImageCuteBaby(),
            context.emptySizedHeightBoxLow3x,
            _buildCongratulationText(context),
            context.emptySizedHeightBoxLow,
            _buildLoremText(context),
            const Expanded(child: SizedBox.shrink()),
          ],
        ),
      ),
    );
  }

  Image _buildImageCuteBaby() =>
      Image.asset(ImageConstants.instance.img_cute_baby.imagePath);

  Text _buildLoremText(BuildContext context) =>
      Text(StringConstants.instance.loremIpsumText,
          textAlign: TextAlign.center, style: context.textTheme.bodySmall);

  Text _buildCongratulationText(BuildContext context) =>
      Text(StringConstants.instance.congratulationText,
          style: context.textTheme.displayLarge);
}
