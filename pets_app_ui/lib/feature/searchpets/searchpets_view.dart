import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:pets_app_ui/core/components/constants/colors/color_constants.dart';
import 'package:pets_app_ui/core/components/constants/image/image_constants.dart';
import 'package:pets_app_ui/core/components/constants/text/text_constants.dart';
import 'package:pets_app_ui/feature/searchpets/model/search_pet_models.dart';
import 'package:pets_app_ui/products/components/widgets/border_radius_widget.dart';
import 'package:pets_app_ui/products/components/widgets/decoration_constants_view.dart';

import '../../products/components/widgets/appbar_buttons_row_view.dart';
import '../../products/components/widgets/padding_page_view.dart';

class SearchPetsView extends StatelessWidget {
  SearchPetsView({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddingPageView(
      child: Column(
        children: [
          const AppBarButtonsRowView(),
          context.emptySizedHeightBoxLow,
          _buildTabBarButtonsGroup(context),
          context.emptySizedHeightBoxLow,
          _buildItemList(),
        ],
      ),
    );
  }

  Expanded _buildItemList() {
    return Expanded(
      child: ListView.separated(
        padding: EdgeInsets.zero,
        shrinkWrap: true,
        separatorBuilder: (BuildContext context, int index) => const Divider(),
        itemCount: SearchPetModel.itemList().length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(
                ImageConstants.instance.img_your_image_big.imagePath,
                fit: BoxFit.fill),
            title: Text(SearchPetModel.itemList()[index].name ?? "",
                style: context.textTheme.labelMedium),
            subtitle: Row(
              children: [
                Icon(
                  Icons.location_on_outlined,
                  size: context.normalValue,
                ),
                Text(
                  SearchPetModel.itemList()[index].locationName ?? "",
                  style: context.textTheme.headlineSmall,
                )
              ],
            ),
            trailing:
                Image.asset(ImageConstants.instance.img_like_icon.imagePath),
          );
        },
      ),
    );
  }

  Container _buildTabBarButtonsGroup(BuildContext context) {
    return Container(
      height: context.dynamicHeight(0.08),
      decoration: BoxDecorationConstants(
          color: ColorEnum.purpleCabbage.colorPath,
          borderRadius: BorderConstants.circularRadiusNormal),
      child: Padding(
        padding: context.paddingLow,
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: _buildNearYouButton(context),
            ),
            Expanded(
              flex: 1,
              child: _buildFavYouButton(context),
            ),
          ],
        ),
      ),
    );
  }

  Center _buildFavYouButton(BuildContext context) {
    return Center(
      child: Text(
        StringConstants.instance.favouritesText,
        style: context.textTheme.labelMedium
            ?.copyWith(color: ColorEnum.white.colorPath),
      ),
    );
  }

  Container _buildNearYouButton(BuildContext context) {
    return Container(
        decoration: BoxDecorationConstants(
            color: ColorEnum.white.colorPath,
            borderRadius: BorderConstants.circularRadiusNormal),
        child: Center(
          child: buildTextWidget(
            context,
            StringConstants.instance.nearYourText,
          ),
        ));
  }

  Text buildTextWidget(BuildContext context, String text) {
    return Text(
      text,
      style: context.textTheme.labelMedium,
    );
  }
}
