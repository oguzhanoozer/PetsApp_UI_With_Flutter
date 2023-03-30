import 'package:flutter/material.dart';
import 'package:pets_app_ui/core/init/theme/app_theme.dart';
import 'package:pets_app_ui/feature/splash/view/splash_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.createTheme(AppThemeLight()),
      title: 'Material App',
      home: const SplashView(),
    );
  }
}
