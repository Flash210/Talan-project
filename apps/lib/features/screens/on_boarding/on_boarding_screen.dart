import 'package:apps/contants/colors.dart';
import 'package:apps/contants/images_strings.dart';
import 'package:apps/contants/sizes.dart';
import 'package:apps/contants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          LiquidSwipe(pages: [
            Container(
              padding:const  EdgeInsets.all(tDefautSize),
              color: tOnBordingPage1Color,
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Column(
                  children: [
                   const  Image(image:  AssetImage(page1)),
                    Text(tOnBoardingTitle1,style: Theme.of(context).textTheme.titleLarge),
                   const  Text(tOnBoardingSub1,textAlign: TextAlign.center,),
                    
                  ],),
                const   Text(tOnBoardingCounter1)
                              ]),
              
              ),
            Container(color: tOnBoardingPage2Color,
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                   const  Image(image: AssetImage(page2)),
                    Text(tOnBoardingTitle2,style: Theme.of(context).textTheme.titleLarge),
                   const  Text(tOnBoardingSub2,textAlign: TextAlign.center),

                    
                  ],
                ),
              const   Text(tOnBoardingCounter2)
              ]),
              
            
            ),
            Container(color: tOnBoardingPage3Color,
            
            child:  Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Image(image: AssetImage(page3)),
                Column(
                  children:[
                  Text(tOnBoardingTitle3,style: Theme.of(context).textTheme.titleLarge),
                const Text(tOnBoardingSub3,textAlign: TextAlign.center)
                ]), 
                const Text(tOnBoardingCounter3)
              ]),
              
            ),
          ])
        ],
      ),
    );
  }
}
