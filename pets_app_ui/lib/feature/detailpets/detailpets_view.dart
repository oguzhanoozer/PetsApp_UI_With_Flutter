import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:pets_app_ui/core/components/constants/colors/color_constants.dart';
import 'package:pets_app_ui/core/components/constants/image/image_constants.dart';
import 'package:pets_app_ui/products/components/widgets/card_widget.dart';
import 'package:pets_app_ui/products/components/widgets/padding_page_view.dart';

import '../../core/components/constants/text/text_constants.dart';
import '../../products/components/widgets/appbar_buttons_row_view.dart';
import '../../products/components/widgets/border_radius_widget.dart';
import '../../products/components/widgets/decoration_constants_view.dart';
import '../../products/components/widgets/elevated_button_widget.dart';

class DetailPetsView extends StatelessWidget {
  DetailPetsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorEnum.alto.colorPath,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: context.dynamicWidth(0.1),
                vertical: context.dynamicHeight(0.1),
              ),
              child: const AppBarButtonsRowView(iconData: true),
            ),
            SizedBox(height: context.dynamicHeight(0.2)),
            _buildDetailSide(context),
          ],
        ));
  }

  Expanded _buildDetailSide(BuildContext context) {
    return Expanded(
      child: Container(
        //  height: context.dynamicHeight(0.3),
        decoration: BoxDecorationConstants(
            borderRadius: BorderConstants.topLeftRight,
            color: ColorEnum.white.colorPath),

        child: Padding(
          padding: EdgeInsets.symmetric(
              vertical: context.dynamicHeight(0.03),
              horizontal: context.dynamicHeight(0.03)),
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    _buildItemNameColumn(context),
                    const Expanded(child: SizedBox.shrink()),
                    Image.asset(
                        ImageConstants.instance.img_your_image_big.imagePath),
                    _buildCompanyNameColumn(context),
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    _buildItemCardWidget(context, "Age", "2"),
                    _buildItemCardWidget(context, "Sex", "Male"),
                    _buildItemCardWidget(context, "Color", "Grey"),
                    _buildItemCardWidget(context, "Weight", "11kg"),
                  ],
                ),
              ),
              context.emptySizedHeightBoxLow,
              Text(StringConstants.instance.exampleParagraph1,
                  style: context.textTheme.headlineLarge),
              context.emptySizedHeightBoxLow3x,
              Text(StringConstants.instance.exampleParagraph2,
                  style: context.textTheme.headlineLarge),
              context.emptySizedHeightBoxLow3x,
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButtonWidget(
                      buttonColor: ColorEnum.purpleCabbage.colorPath,
                      buttonText: StringConstants.instance.adoptionText,
                      onPressed: null,
                      buttonSize: Size(
                        context.dynamicWidth(0.6),
                        context.dynamicHeight(0.07),
                      ),
                    ),
                    context.emptySizedWidthBoxLow,
                    Image.asset(
                      ImageConstants.instance.img_like_icon_big.imagePath,
                      height: context.dynamicHeight(0.07),
                    )
                  ],
                ),
              ),
              context.emptySizedHeightBoxNormal,
            ],
          ),
        ),
      ),
    );
  }

  CardWidget _buildItemCardWidget(
      BuildContext context, String title, String subTitle) {
    return CardWidget(
      isBorderExist: true,
      childWidget: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: context.normalValue,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,
                style: context.textTheme.labelSmall
                    ?.copyWith(color: ColorEnum.black.colorPath)),
            Text(subTitle,
                style: context.textTheme.labelMedium
                    ?.copyWith(color: ColorEnum.redChalk.colorPath)),
          ],
        ),
      ),
    );
  }

  Widget _buildItemNameColumn(BuildContext context) {
    final itemName = "Daniel James";
    final itemCity = "New York City (2.8 km)";

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        context.emptySizedHeightBoxLow,
        _buildItemNameText(itemName, context),
        _buildCityRow(context, itemCity)
      ],
    );
  }

  Widget _buildCompanyNameColumn(BuildContext context) {
    final companyName = "Kate";
    final companyFounder = "Founder";

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        context.emptySizedHeightBoxLow,
        _buildCompanyNameText(companyName, context),
        SizedBox(height: context.lowValue / 2),
        _buildCompanyFounderText(companyFounder, context)
      ],
    );
  }

  Text _buildCompanyNameText(String itemName, BuildContext context) =>
      Text(itemName, style: context.textTheme.displaySmall);

  Text _buildCompanyFounderText(String itemName, BuildContext context) =>
      Text(itemName, style: context.textTheme.titleLarge);

  Text _buildItemNameText(String itemName, BuildContext context) =>
      Text(itemName, style: context.textTheme.labelMedium);

  Row _buildCityRow(BuildContext context, String itemCity) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.location_on_outlined, size: context.normalValue),
        context.emptySizedWidthBoxLow,
        Text(itemCity, style: context.textTheme.headlineSmall),
      ],
    );
  }
}
