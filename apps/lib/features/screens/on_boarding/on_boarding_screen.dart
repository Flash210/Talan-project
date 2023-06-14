import 'package:apps/contants/colors.dart';
import 'package:apps/contants/images_strings.dart';
import 'package:apps/contants/text_strings.dart';
import 'package:apps/features/models/model_onBoarding.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import 'on_boarding_page_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final controller = LiquidController();

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final pages = [
      onBoardingPageWidget(
        m: OnBoardingModel(
            image: page1,
            title: tOnBoardingTitle1,
            subTitle: tOnBoardingSub1,
            counterText: tOnBoardingCounter1,
            bgColor: tOnBordingPage1Color,
            height: size.height),
      ),
      onBoardingPageWidget(
        m: OnBoardingModel(
            image: page2,
            title: tOnBoardingTitle2,
            subTitle: tOnBoardingSub2,
            counterText: tOnBoardingCounter2,
            bgColor: tOnBoardingPage2Color,
            height: size.height),
      ),
      onBoardingPageWidget(
        m: OnBoardingModel(
            image: page3,
            title: tOnBoardingTitle3,
            subTitle: tOnBoardingSub3,
            counterText: tOnBoardingCounter3,
            bgColor: tOnBoardingPage3Color,
            height: size.height),
      ),
    ];

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          LiquidSwipe(
            pages: pages,
            liquidController: controller,
            onPageChangeCallback: onPageChangeCallback,
            slideIconWidget: const Icon(Icons.arrow_back_ios),
            enableSideReveal: true,
          ),
          Positioned(
            bottom: 60.0,
            child: OutlinedButton(
              onPressed: () {
                int nextpage = controller.currentPage + 1;
                controller.animateToPage(page: nextpage);
              },
              style: ElevatedButton.styleFrom(
                side: const BorderSide(color: Colors.black26),
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(20),
                onPrimary: Colors.white,
              ),
              child: Container(
                padding: const EdgeInsets.all(20.0),
                decoration: const BoxDecoration(
                    color: tDarkColor, shape: BoxShape.circle),
                child: const Icon(Icons.arrow_forward_ios),
              ),
            ),
          ),
          Positioned(
              top: 50,
              right: 20,
              child: TextButton(
                onPressed: () => controller.jumpToPage(page: 2),
                child: const Text(
                  "Skip",
                  style: TextStyle(color: Colors.grey),
                ),
              )),
          Positioned(
              bottom: 10,
              child: AnimatedSmoothIndicator(
                activeIndex: controller.currentPage,
                count: 3,
                effect: const WormEffect(
                    activeDotColor: Color(0xff272727), dotHeight: 5.0),
              )),
        ],
      ),
    );
  }

  void onPageChangeCallback(int activePageIndex) {
    setState(() {
      currentPage = activePageIndex;
    });
  }
}
