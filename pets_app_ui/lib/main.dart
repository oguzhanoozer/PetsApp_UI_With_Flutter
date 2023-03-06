import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:pets_app_ui/core/init/theme/app_theme.dart';

import 'feature/home_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeManager.createTheme(AppThemeLight()),
      title: 'Material App',
      home: HomeView(),
    );
  }
}
