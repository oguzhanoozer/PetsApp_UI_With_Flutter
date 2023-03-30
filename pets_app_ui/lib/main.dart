import 'package:flutter/material.dart';
import 'package:pets_app_ui/core/init/theme/app_theme.dart';
import 'package:pets_app_ui/feature/login/login_view.dart';
import 'package:pets_app_ui/feature/splash/splash_view.dart';
import 'feature/congratulation_view.dart';
import 'feature/detailpets/detailpets_view.dart';
import 'feature/findyourpets/findyourpets_view.dart';
import 'feature/searchpets/searchpets_view.dart';
import 'feature/sign_up/signup_view.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeManager.createTheme(AppThemeLight()),
      title: 'Material App',
      home: SearchPetsView(),
    );
  }
}
