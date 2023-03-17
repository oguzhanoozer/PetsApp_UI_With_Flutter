import 'package:flutter/material.dart';

class CardWidget extends Card {
  const CardWidget({required this.childWidget, super.key})
      : super(child: childWidget);

  final Widget childWidget;
}
