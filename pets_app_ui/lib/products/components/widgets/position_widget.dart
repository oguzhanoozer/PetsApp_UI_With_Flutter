import 'package:flutter/material.dart';

class BuildPositionedWidget extends Positioned {
  const BuildPositionedWidget({
    this.top,
    this.right,
    this.left,
    this.bottom,
    super.key,
    required this.child,
  }) : super(child: child, bottom: bottom, right: right, top: top, left: left);
  final double? top;
  final double? right;
  final double? left;
  final double? bottom;
  final Widget child;
}
