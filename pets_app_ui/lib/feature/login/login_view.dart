import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';
import 'package:pets_app_ui/core/components/constants/image/image_constants.dart';
import 'package:pets_app_ui/core/components/constants/text/text_constants.dart';
import 'package:pets_app_ui/products/components/widgets/input_text_field_widget.dart';

import '../../core/components/constants/colors/color_constants.dart';
import '../../products/components/widgets/appbar_buttons_row_view.dart';
import '../../products/components/widgets/elevated_button_widget.dart';
import '../../products/components/widgets/padding_page_view.dart';
import '../../products/components/widgets/social_button_widget.dart';

part 'login_part_view.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return PaddingPageView(
      child: Column(
        children: [
          const AppBarButtonsRowView(),
          context.emptySizedHeightBoxLow3x,
          _buildWelcomeText(context),
          _buildSignInText(context),
          context.emptySizedHeightBoxLow3x,
          _buildEmailField(),
          context.emptySizedHeightBoxLow,
          _buildPasswordField(),
          context.emptySizedHeightBoxLow3x,
          _buildForgotPasswordText(context),
          context.emptySizedHeightBoxNormal,
          _buildLoginButton(context),
          context.emptySizedHeightBoxNormal,
          _buildOrLoginWith(context),
          context.emptySizedHeightBoxLow3x,
          _buildSocialButton(context),
          context.emptySizedHeightBoxLow,
          _buildCreateAccountRow(context),
        ],
      ),
    );
  }
}
