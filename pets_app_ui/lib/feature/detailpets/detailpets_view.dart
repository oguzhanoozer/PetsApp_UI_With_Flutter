import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:pets_app_ui/core/components/constants/colors/color_constants.dart';
import 'package:pets_app_ui/products/components/widgets/padding_page_view.dart';

import '../../products/components/widgets/appbar_buttons_row_view.dart';

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
            Expanded(
              child: Container(
                //  height: context.dynamicHeight(0.3),
                decoration: BoxDecoration(
                  color: ColorEnum.white.colorPath,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(26),
                    topRight: Radius.circular(26),
                  ),
                ),
                child: Padding(
                  padding: context.paddingNormal,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          _buildItemNameColumn(context),
                          Column(),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  Widget _buildItemNameColumn(BuildContext context) {
    final itemName = "Daniel James";
    final itemCity = "New York City (2.8 km)";

    return Column(
      children: [
        _buildItemNameText(itemName, context),
        _buildCityRow(context, itemCity)
      ],
    );
  }

  Text _buildItemNameText(String itemName, BuildContext context) =>
      Text(itemName, style: context.textTheme.displaySmall);

  Row _buildCityRow(BuildContext context, String itemCity) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.location_on_outlined,
          size: context.normalValue,
        ),
        Text(itemCity, style: context.textTheme.titleLarge),
      ],
    );
  }
}
