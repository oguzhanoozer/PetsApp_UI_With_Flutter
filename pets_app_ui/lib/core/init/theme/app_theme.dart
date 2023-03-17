import 'package:flutter/material.dart';

import '../../components/constants/colors/color_constants.dart';
import 'abstract_theme_manager.dart';
import 'text/dark_text.dart';
import 'text/light_text.dart';
import 'text/text_manager.dart';

abstract class ThemeManager {
  static ThemeData createTheme(ITheme theme) => ThemeData(
        textTheme: theme.textTheme.textData,
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26.0),
            borderSide: BorderSide(
              color: ColorEnum.black.colorPath,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(26.0),
            borderSide: BorderSide(
              color: ColorEnum.black.colorPath,
            ),
          ),
        ),
        cardTheme: CardTheme(
          elevation: 0,
          color: ColorEnum.white.colorPath,
          shape: RoundedRectangleBorder(
            side: BorderSide(
                width: 1, color: ColorEnum.genteelLavender.colorPath),
            borderRadius: BorderRadius.circular(22.0),
          ),
        ),
        // iconTheme: IconThemeData(color: theme.colors.iconColor),
        scaffoldBackgroundColor: ColorEnum.white.colorPath,
        // appBarTheme: AppBarTheme(
        //   backgroundColor: theme.colors.appBarColor,
        // ),
        // dividerTheme: DividerThemeData(
        //   color: theme.colors.dividerColor,
        //   thickness: 1,
        // ),
        // cardColor: theme.colors.cardTappedColor,

        // radioTheme: RadioThemeData(
        //     fillColor:
        //         MaterialStatePropertyAll(theme.colors.optionSelectedColor)),
        // bottomAppBarTheme:
        //     BottomAppBarTheme(color: theme.colors.colors.frenchRose),
        // tabBarTheme: TabBarTheme(
        //   indicatorSize: TabBarIndicatorSize.tab,
        //   labelColor: theme.colors.tabBarSelectedColor,
        //   unselectedLabelColor: theme.colors.tabBarUnSelectedColor,
        //   indicator: UnderlineTabIndicator(
        //     borderSide: BorderSide(
        //         width: 5,
        //         color: theme.colors.tabBarSelectedColor ?? Colors.red),
        //   ),
        // ),
      );
}

class AppThemeLight implements ITheme {
  //@override
  /// IColors get colors => LightColors();

  @override
  ITextTheme get textTheme => TextThemeLight();
}

class AppThemeDark implements ITheme {
  // @override
  // IColors get colors => DarkColors();

  @override
  ITextTheme get textTheme => DarkThemeText();
}
