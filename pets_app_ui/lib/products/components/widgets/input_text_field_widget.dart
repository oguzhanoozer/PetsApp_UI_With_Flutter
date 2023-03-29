import 'package:flutter/material.dart';
import 'package:pets_app_ui/core/components/constants/colors/color_constants.dart';

class InputTextFieldWidget extends TextFormField {
  InputTextFieldWidget(
      {this.obscureText,
      this.isSearchField = false,
      required this.controller,
      required this.prefixIcon,
      required this.hintText,
      super.key})
      : super(
          obscureText: obscureText ?? false,
          style: TextStyle(
            fontFamily: 'Nunito',
            color: Color(0xff1e2843),
            fontSize: 16,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            prefixIcon: isSearchField ? null : _buildIconWidget(prefixIcon),
            suffixIcon: isSearchField ? _buildIconWidget(prefixIcon) : null,
          ),
        );

  static Align _buildIconWidget(IconData prefixIcon) {
    return Align(
      widthFactor: 1.0,
      heightFactor: 1.0,
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 10),
        child: Container(
          decoration: BoxDecoration(
              color: ColorEnum.peachBud.colorPath,
              borderRadius: BorderRadius.circular(26)),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Icon(prefixIcon, color: ColorEnum.black.colorPath),
          ),
        ),
      ),
    );
  }

  final String hintText;
  final IconData prefixIcon;
  final bool? obscureText;
  final bool isSearchField;
  final TextEditingController controller;
}
