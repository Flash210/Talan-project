import 'package:apps/src/contants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../contants/sizes.dart';

class TElevatedBtnThemeData {
  TElevatedBtnThemeData._();

  static final lightOutlinedBtnTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(),
          foregroundColor: tWhiteColor,
          elevation: 0,
          backgroundColor: tDarkColor,
          side: const BorderSide(color: tSecondaryColor),
          padding: const EdgeInsets.symmetric(vertical: tButtonHeight)));


  static final darkOutlinedBtnTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(),
          foregroundColor: tSecondaryColor,
          elevation: 0,
          backgroundColor: tWhiteColor,
          side: const BorderSide(color: tSecondaryColor),
          padding: const EdgeInsets.symmetric(vertical: tButtonHeight)));



}
