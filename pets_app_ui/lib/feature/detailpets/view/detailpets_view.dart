import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:pets_app_ui/core/components/constants/colors/color_constants.dart';
import 'package:pets_app_ui/core/components/constants/image/image_constants.dart';
import 'package:pets_app_ui/products/components/widgets/card_widget.dart';
import 'package:pets_app_ui/products/components/widgets/padding_page_view.dart';

import '../../../core/components/constants/text/text_constants.dart';
import '../../../products/components/widgets/appbar_buttons_row_view.dart';
import '../../../products/components/widgets/border_radius_widget.dart';
import '../../../products/components/widgets/decoration_constants_view.dart';
import '../../../products/components/widgets/elevated_button_widget.dart';

part 'detailpets_part_view.dart';

class DetailPetsView extends StatelessWidget {
  const DetailPetsView({super.key});

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
}
