import 'package:flutter/material.dart';
import 'package:flutter/src/material/text_theme.dart';

import 'text_manager.dart';

class DarkThemeText implements ITextTheme {
  @override
  DarkThemeText() {
    textData = const TextTheme(
        //     bodySmall: TextStyle(
        //       fontFamily: 'Nunito',
        //       color: Color(0xffa1a6b3),
        //       fontSize: 16,
        //       fontWeight: FontWeight.w600,
        //       fontStyle: FontStyle.normal,
        //     ),
        //     bodyLarge: TextStyle(
        //       fontFamily: 'Nunito',
        //       color: Color(0xff1e2843),
        //       fontSize: 32,
        //       fontWeight: FontWeight.w800,
        //       fontStyle: FontStyle.normal,
        //     ),
        //     bodyMedium: TextStyle(
        //       fontFamily: 'Nunito',
        //       color: Color(0xffffffff),
        //       fontSize: 16,
        //       fontWeight: FontWeight.w800,
        //       fontStyle: FontStyle.normal,
        //     ),
        //     displayLarge: TextStyle(
        //       fontFamily: 'Nunito',
        //       color: Color(0xff1e2843),
        //       fontSize: 24,
        //       fontWeight: FontWeight.w800,
        //       fontStyle: FontStyle.normal,
        //     ),
        //     displayMedium: TextStyle(
        //       fontFamily: 'Nunito',
        //       color: Color(0xffa1a6b3),
        //       fontSize: 14,
        //       fontWeight: FontWeight.w600,
        //       fontStyle: FontStyle.normal,
        //     ),
        //     labelMedium: TextStyle(
        //       fontFamily: 'Nunito',
        //       color: Color(0xff1e2843),
        //       fontSize: 16,
        //       fontWeight: FontWeight.w700,
        //       fontStyle: FontStyle.normal,
        //     ),
        //     labelSmall: TextStyle(
        //       fontFamily: 'Nunito',
        //       color: Color(0xff40339d),
        //       fontSize: 14,
        //       fontWeight: FontWeight.w700,
        //       fontStyle: FontStyle.normal,
        //     ),
        //     displaySmall: TextStyle(
        //       fontFamily: 'Nunito',
        //       color: Color(0xff1e2843),
        //       fontSize: 12,
        //       fontWeight: FontWeight.w700,
        //       fontStyle: FontStyle.normal,
        //     ),
        //     titleLarge: TextStyle(
        //       fontFamily: 'Nunito',
        //       color: Color(0xffa1a6b3),
        //       fontSize: 8,
        //       fontWeight: FontWeight.w600,
        //       fontStyle: FontStyle.normal,
        //     ),
        //     titleSmall: TextStyle(
        //       fontFamily: 'Nunito',
        //       color: Color(0xff1e2843),
        //       fontSize: 7,
        //       fontWeight: FontWeight.w700,
        //       fontStyle: FontStyle.normal,
        //     ),
        //     titleMedium: TextStyle(
        //       fontFamily: 'Nunito',
        //       color: Color(0xffe99e9d),
        //       fontSize: 7,
        //       fontWeight: FontWeight.w700,
        //       fontStyle: FontStyle.normal,
        //     ),
        //     headlineSmall: TextStyle(
        //       fontFamily: 'Nunito',
        //       color: Color(0xffa1a6b3),
        //       fontSize: 11,
        //       fontWeight: FontWeight.w600,
        //       fontStyle: FontStyle.normal,
        //     ),
        //     headlineLarge: TextStyle(
        //       fontFamily: 'Nunito',
        //       color: Color(0xffa1a6b3),
        //       fontSize: 13,
        //       fontWeight: FontWeight.w600,
        //       fontStyle: FontStyle.normal,
        //     )
        );
  }

  @override
  late TextTheme textData;
}
