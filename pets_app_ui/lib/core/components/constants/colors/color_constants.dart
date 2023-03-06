import 'package:flutter/material.dart';
import 'hex_color_convert.dart';

enum ColorEnum {
  white("#FFFFFF"),
  black("#000000"),
  redChalk("#ED7472"),
  cozySummerSunset("#E99E9D"),
  voraciousWhite("#FDEDED"),
  doctor("#F9F9F9"),
  yankeesBlue("#1E2843"),
  genteelLavender("#E2E6EB"),
  whiteSolid("#F4F3FA"),
  greatFalls("#A1A6B3"),
  purpleCabbage("#40339D"),
  honoluluBlue("#007EC4"),
  peachBud("#FAAFAE"),
  frozenSalmon("#FFAB90");

  final String hexCode;
  const ColorEnum(this.hexCode);
}

extension ColorPathExtension on ColorEnum {
  Color get colorPath => HexColor("${this.hexCode}");
}
