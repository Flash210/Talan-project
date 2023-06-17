import 'package:apps/src/fade_in_animation/fade_animation_model.dart';
import 'package:apps/src/fade_in_animation/fade_in_animation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class TFadeAnimation extends StatelessWidget {
  TFadeAnimation({
    super.key,
    required this.duractionInMs,
    required this.tAnimationsPosition, required this.child,
  });

  final sp = Get.put(FadeInAnimationController());
  final int duractionInMs;
  final TAnimationsPosition tAnimationsPosition;
  final Widget child; 

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
          duration: const Duration(milliseconds: 1600),
          top: sp.animate.value
              ? tAnimationsPosition.topAfter
              : tAnimationsPosition.topBefore,
          left: sp.animate.value
              ? tAnimationsPosition.leftAfter
              : tAnimationsPosition.leftBefore,
          bottom: sp.animate.value
              ? tAnimationsPosition.bottomAfter
              : tAnimationsPosition.bottomBefore,
          right: sp.animate.value
              ? tAnimationsPosition.rightAfter
              : tAnimationsPosition.rightBefore,
          child: child),
    );
  }
}
