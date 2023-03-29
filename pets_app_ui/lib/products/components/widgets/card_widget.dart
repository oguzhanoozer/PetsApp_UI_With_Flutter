import 'package:flutter/material.dart';

import '../../../core/components/constants/colors/color_constants.dart';

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
                        width: 0, color: ColorEnum.genteelLavender.colorPath),
                    borderRadius: BorderRadius.circular(22.0),
                  )
                : null);

  final Widget childWidget;
  final bool isBorderExist;
  final Color? color;
}
