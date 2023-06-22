import 'package:apps/src/contants/colors.dart';
import 'package:flutter/material.dart';

class TTextFormTheme {
  TTextFormTheme._();

  static InputDecorationTheme lighInputDecorationTheme =
      const InputDecorationTheme(
          border: OutlineInputBorder(),
          prefixIconColor: tSecondaryColor,
          floatingLabelStyle: TextStyle(color: tSecondaryColor),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: tSecondaryColor, width: 2)));



             static InputDecorationTheme darkInputDecorationTheme =
      const InputDecorationTheme(
          border: OutlineInputBorder(),
          prefixIconColor: tPrimaryColor,
          floatingLabelStyle: TextStyle(color: tPrimaryColor),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: tPrimaryColor, width: 2)));


}
