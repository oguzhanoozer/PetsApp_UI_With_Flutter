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
  @override
  final double? top;
  @override
  final double? right;
  @override
  final double? left;
  @override
  final double? bottom;
  @override
  final Widget child;
}
