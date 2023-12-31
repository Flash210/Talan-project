import 'package:apps/src/contants/colors.dart';
import 'package:apps/src/contants/images_strings.dart';
import 'package:apps/src/contants/sizes.dart';
import 'package:apps/src/contants/text_strings.dart';
import 'package:apps/src/fade_in_animation/animation_design.dart';
import 'package:apps/src/fade_in_animation/fade_animation_model.dart';
import 'package:apps/src/features/auth/screens/login/login_screen.dart';
import 'package:apps/src/features/auth/screens/signup/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../fade_in_animation/fade_in_animation_controller.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final sp = Get.put(FadeInAnimationController());

    sp.startAnimation();

    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;

    return Scaffold(
      backgroundColor: isDarkMode ? tSecondaryColor : tPrimaryColor,
      body: Stack(
        children: [
          TFadeAnimation(
            duractionInMs: 1200,
            tAnimationsPosition: TAnimationsPosition(
                bottomAfter: 0,
                bottomBefore: -100,
                leftBefore: 0,
                leftAfter: 0,
                topAfter: 0,
                topBefore: 0,
                rightAfter: 0,
                rightBefore: 0),
            child: Container(
              padding: const EdgeInsets.all(tDefautSize),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image(
                      image: const AssetImage(tWelcome_img),
                      height: height * 0.6),
                  Column(
                    children: [
                      Text(tWelcomeTitle,
                          style: Theme.of(context).textTheme.headline6),
                      Text(
                        tWelcomeSubTitle,
                        style: Theme.of(context).textTheme.bodyText2,
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: OutlinedButton(
                              onPressed: () => Get.to(() => LoginScreen()),
                              child: Text(tLogin.toUpperCase()))),
                      const SizedBox(width: 10.0),
                      Expanded(
                          child: ElevatedButton(
                                 onPressed: () => Get.to(() => SignUpScreen()),
                              child: Text(tSignUp.toUpperCase())))
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
