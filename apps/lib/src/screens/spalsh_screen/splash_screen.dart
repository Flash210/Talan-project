import 'package:apps/src/contants/colors.dart';
import 'package:apps/src/contants/images_strings.dart';
import 'package:apps/src/contants/sizes.dart';
import 'package:apps/src/contants/text_strings.dart';
import 'package:apps/src/fade_in_animation/fade_animation_model.dart';
import 'package:apps/src/fade_in_animation/fade_in_animation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../fade_in_animation/animation_design.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  //final sp = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    final sp = Get.put(FadeInAnimationController());

    sp.startAnimationSplash();
    return Scaffold(
        body: SafeArea(
      child: Stack(children: [
        TFadeAnimation(
          duractionInMs: 1600,
          tAnimationsPosition: TAnimationsPosition(
              topAfter: 0, topBefore: -30, leftAfter: 0, leftBefore: -30),
          child: const Image(
            image: AssetImage(tSplashImage),
            height: 60,
            width: 60,
          ),
        ),
        TFadeAnimation(
          duractionInMs: 2000,
          tAnimationsPosition: TAnimationsPosition(
            topBefore: 80,
            topAfter: 80,
            leftAfter: tDefautSize,
            leftBefore: -80,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(TAppName, style: Theme.of(context).textTheme.headline1),
              Text(
                tAppTagLine,
                style: Theme.of(context).textTheme.headline4,
              )
            ],
          ),
        ),
        TFadeAnimation(
            duractionInMs: 2400,
            tAnimationsPosition:
                TAnimationsPosition(bottomBefore: 0, bottomAfter: 100),
            child: const Image(
              image: AssetImage(tSpalshScreenIcon),
              height: 400,
            )),
        TFadeAnimation(
          duractionInMs: 2400,
          tAnimationsPosition: TAnimationsPosition(
              bottomBefore: 0,
              bottomAfter: 60,
              rightBefore: tDefautSize,
              rightAfter: tDefautSize),
          child: Container(
            width: tSplashConatinerSize,
            height: tSplashConatinerSize,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100), color: tPrimaryColor),
          ),
        )
      ]),
    ));
  }
}
