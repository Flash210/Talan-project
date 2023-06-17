import 'package:apps/src/utils/theme/widget_themes/elevated_btn.dart';
import 'package:apps/src/utils/theme/widget_themes/outlined_btn.dart';
import 'package:apps/src/utils/theme/widget_themes/text_theme.dart';
import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light, 
    textTheme: TTextTheme.lightTextTheme,
    outlinedButtonTheme: TOutlinedBtnTheme.lightOutlinedBtnTheme,
    elevatedButtonTheme: TElevatedBtnThemeData.lightOutlinedBtnTheme
  );

  static ThemeData darTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: TTextTheme.darkTextTheme,
        outlinedButtonTheme: TOutlinedBtnTheme.darkOutlinedBtnTheme,
            elevatedButtonTheme: TElevatedBtnThemeData.darkOutlinedBtnTheme


  );
}
