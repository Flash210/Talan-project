import 'package:apps/src/contants/colors.dart';
import 'package:flutter/material.dart';

import '../../../contants/sizes.dart';

class TOutlinedBtnTheme {
  TOutlinedBtnTheme._();

  static final lightOutlinedBtnTheme =
      OutlinedButtonThemeData(
         style: OutlinedButton.styleFrom(
                        shape: const RoundedRectangleBorder(),
                        foregroundColor: tDarkColor,
                        side: const BorderSide(color: tDarkColor),
                        padding:const  EdgeInsets.symmetric(vertical: tButtonHeight)
                      ),
      );


  static final darkOutlinedBtnTheme =
      OutlinedButtonThemeData(
         style: OutlinedButton.styleFrom(
                        shape: const RoundedRectangleBorder(),
                        foregroundColor: tWhiteColor,
                        side: const BorderSide(color: tSecondaryColor),
                        padding:const  EdgeInsets.symmetric(vertical: tButtonHeight)
                      ),
      );

}
