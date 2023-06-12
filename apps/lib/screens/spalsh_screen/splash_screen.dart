import 'package:apps/contants/colors.dart';
import 'package:apps/contants/images_strings.dart';
import 'package:apps/contants/sizes.dart';
import 'package:apps/contants/text_strings.dart';
import 'package:apps/features/auth/controllers/splash_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final sp = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    sp.startANimation();
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Obx(() => 
               AnimatedPositioned(
                  duration: const Duration(milliseconds: 1600),
                  top: sp.animate.value ? 0 : -30,
                  left: sp.animate.value ? 0 : -30,
                  child: const Image(
                    image: AssetImage(tSplashImage),
                    height: 60,
                    width: 60,
                  )),
            ),
            Obx( () =>
              AnimatedPositioned(
                  duration: const Duration(milliseconds: 1600),
                  top: 80,
                  left: sp.animate.value ? tDefautSize : -80,
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 1600),
                    opacity: sp.animate.value ? 1 : 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(TAppName,
                            style: Theme.of(context).textTheme.headlineLarge),
                        Text(
                          tAppTagLine,
                          style: Theme.of(context).textTheme.headlineSmall,
                        )
                      ],
                    ),
                  )),
            ),
            Obx( () =>
               AnimatedPositioned(
                duration: const Duration(microseconds: 2400),
                bottom: sp.animate.value ? 100 : 0,
                left: 50,
                right: 50,
                child: AnimatedOpacity(
                  duration: const Duration(microseconds: 2000),
                  opacity: sp.animate.value ? 1 : 0,
                  child: const Image(
                    image: AssetImage(tSpalshScreenIcon),
                    height: 400,
                  ),
                ),
              ),
            ),
            Obx( () =>
               AnimatedPositioned(
                duration: const Duration(milliseconds: 2400),
                bottom: sp.animate.value ? 60 : 0,
                right: tDefautSize,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 2000),
                  opacity: sp.animate.value ? 1 : 0,
                  child: Container(
                    width: tSplashConatinerSize,
                    height: tSplashConatinerSize,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: tPrimaryColor),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
