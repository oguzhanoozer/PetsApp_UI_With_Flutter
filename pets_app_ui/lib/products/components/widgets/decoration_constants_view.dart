import 'package:flutter/material.dart';

class BoxDecorationConstants extends BoxDecoration {
  final Color? color;
  final BorderRadius? borderRadius;

  BoxDecorationConstants({this.color, this.borderRadius})
      : super(color: color, borderRadius: borderRadius);
}
