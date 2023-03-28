import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class PaddingPageView extends StatelessWidget {
  const PaddingPageView({super.key, required this.child});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.dynamicWidth(0.05),
              vertical: context.dynamicHeight(0.1),
            ),
            child: child));
  }
}
