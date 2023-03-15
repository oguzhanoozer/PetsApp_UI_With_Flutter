import 'package:flutter/material.dart';
import 'package:pets_app_ui/core/components/constants/colors/color_constants.dart';

class InputTextFieldWidget extends TextFormField {
  InputTextFieldWidget(
      {required this.controller,
      required this.prefixIcon,
      required this.hintText,
      super.key})
      : super(
          style: TextStyle(
            fontFamily: 'Nunito',
            color: Color(0xff1e2843),
            fontSize: 16,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
          ),
          decoration: InputDecoration(
            prefixIcon: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: ColorEnum.peachBud.colorPath,
                    borderRadius: BorderRadius.circular(26)),
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(prefixIcon, color: ColorEnum.black.colorPath),
                ),
              ),
            ),
          ),
        );
  final String hintText;
  final IconData prefixIcon;
  final TextEditingController controller;
}
