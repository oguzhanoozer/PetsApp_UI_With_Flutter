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

part 'signup_part_view.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({super.key});

  @override
  State<SignUpView> createState() => _LoginViewState();
}

TextEditingController fullNameController = TextEditingController();
TextEditingController emailController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class _LoginViewState extends State<SignUpView> {
  @override
  Widget build(BuildContext context) {
    return PaddingPageView(
      child: Column(
        children: [
          AppBarButtonsRowView(),
          context.emptySizedHeightBoxLow3x,
          _buildWelcomeText(context),
          _buildSignInText(context),
          context.emptySizedHeightBoxLow3x,
          _buildFullNameField(),
          context.emptySizedHeightBoxLow,
          _buildEmailField(),
          context.emptySizedHeightBoxLow,
          _buildPasswordField(),
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
