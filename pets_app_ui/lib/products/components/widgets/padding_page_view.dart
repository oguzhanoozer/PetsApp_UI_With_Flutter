// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class PaddingPageView extends StatelessWidget {
  const PaddingPageView({
    Key? key,
    required this.child,
    this.scaffoldBackgroundColor,
  }) : super(key: key);
  final Widget child;
  final Color? scaffoldBackgroundColor;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: scaffoldBackgroundColor,
        body: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: context.dynamicWidth(0.05),
              vertical: context.dynamicHeight(0.1),
            ),
            child: child));
  }
}
