import 'package:flutter/material.dart';

import '../../../core/components/constants/colors/color_constants.dart';
import 'border_radius_widget.dart';

class CardWidget extends Card {
  CardWidget(
      {this.color,
      this.isBorderExist = false,
      required this.childWidget,
      super.key})
      : super(
            child: childWidget,
            color: color,
            shape: isBorderExist
                ? RoundedRectangleBorder(
                    side: BorderSide(
                        width: isBorderExist ? 1 : 0,
                        color: ColorEnum.genteelLavender.colorPath),
                    borderRadius: BorderConstants.circularRadiusLow,
                  )
                : null);

  final Widget childWidget;
  final bool isBorderExist;
  @override
  final Color? color;
}
