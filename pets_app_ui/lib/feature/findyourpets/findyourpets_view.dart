import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:pets_app_ui/core/components/constants/colors/color_constants.dart';
import 'package:pets_app_ui/core/components/constants/image/image_constants.dart';
import 'package:pets_app_ui/products/components/widgets/border_radius_widget.dart';

import '../../core/components/constants/text/text_constants.dart';
import '../../products/components/widgets/appbar_buttons_row_view.dart';
import '../../products/components/widgets/card_widget.dart';
import '../../products/components/widgets/decoration_constants_view.dart';
import '../../products/components/widgets/input_text_field_widget.dart';
import '../../products/components/widgets/padding_page_view.dart';

part 'findyourpets_part_view.dart';

class FindYourPetsView extends StatelessWidget {
  FindYourPetsView({super.key});

  @override
  Widget build(BuildContext context) {
    return PaddingPageView(
      child: Column(
        children: [
          const AppBarButtonsRowView(isAddProfileImageHolder: true),
          _buildFindYourTextText(context),
          _buildLovelyPetsInAnywhereTextText(context),
          context.emptySizedHeightBoxLow3x,
          _buildSearchField(),
          context.emptySizedHeightBoxLow,
          _buildAnimalListView(context),
          context.emptySizedHeightBoxLow,
          _buildGridListView(context)
        ],
      ),
    );
  }
}
