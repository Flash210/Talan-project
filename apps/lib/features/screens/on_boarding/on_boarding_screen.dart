import 'package:apps/contants/colors.dart';
import 'package:apps/contants/images_strings.dart';
import 'package:apps/contants/sizes.dart';
import 'package:apps/contants/text_strings.dart';
import 'package:apps/features/models/model_onBoarding.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

import 'on_boarding_page_widget.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    final pages = [
      onBoardingPageWidget(m: OnBoardingModel(  image: page1,
         title: tOnBoardingTitle1, 
         subTitle: tOnBoardingSub1,
          counterText: tOnBoardingCounter1,
           bgColor: tOnBordingPage1Color, 
           height: size.height ),
),

      onBoardingPageWidget(m: OnBoardingModel(  image: page2,
         title: tOnBoardingTitle2, 
         subTitle: tOnBoardingSub2,
          counterText: tOnBoardingCounter2,
           bgColor: tOnBoardingPage2Color, 
           height: size.height ),
),

           onBoardingPageWidget(m: OnBoardingModel( 
             image: page3,
         title: tOnBoardingTitle3, 
         subTitle: tOnBoardingSub3,
          counterText: tOnBoardingCounter3,
           bgColor: tOnBoardingPage3Color, 
           height: size.height ),
),


    ];

    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(pages:pages,
          slideIconWidget: const Icon(Icons.arrow_back_ios),
          enableSideReveal: true ,
          ),
        ],
      ),
    );
  }
}
