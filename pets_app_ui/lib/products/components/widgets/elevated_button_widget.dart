import 'package:flutter/material.dart';

import 'border_radius_widget.dart';

class ElevatedButtonWidget extends ElevatedButton {
  ElevatedButtonWidget(
      {required this.buttonText,
      required this.onPressed,
      required this.buttonColor,
      this.buttonSize,
      super.key})
      : super(
            onPressed: onPressed,
            child: Text(
              buttonText,
              style: const TextStyle(
                fontFamily: 'Nunito',
                color: Color(0xffffffff),
                fontSize: 16,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.normal,
              ),
            ),
            style: ButtonStyle(
                fixedSize: buttonSize != null
                    ? MaterialStateProperty.all(buttonSize)
                    : null,
                backgroundColor: MaterialStateProperty.all(buttonColor),
                shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                        borderRadius: BorderConstants.circularRadiusNormal))));

  final String buttonText;
  @override
  final void Function()? onPressed;
  final Color buttonColor;
  final Size? buttonSize;
}
