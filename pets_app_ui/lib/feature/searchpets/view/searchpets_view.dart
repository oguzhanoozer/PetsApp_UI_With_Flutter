import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:pets_app_ui/core/components/constants/colors/color_constants.dart';
import 'package:pets_app_ui/core/components/constants/image/image_constants.dart';
import 'package:pets_app_ui/core/components/constants/text/text_constants.dart';
import 'package:pets_app_ui/feature/searchpets/model/search_pet_models.dart';
import 'package:pets_app_ui/products/components/widgets/border_radius_widget.dart';
import 'package:pets_app_ui/products/components/widgets/decoration_constants_view.dart';

import '../../../products/components/widgets/appbar_buttons_row_view.dart';
import '../../../products/components/widgets/padding_page_view.dart';

part 'searchpets_part_view.dart';

class SearchPetsView extends StatelessWidget {
  const SearchPetsView({super.key});

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
}
