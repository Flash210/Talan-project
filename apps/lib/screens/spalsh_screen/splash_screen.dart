import 'package:apps/contants/colors.dart';
import 'package:apps/contants/images_strings.dart';
import 'package:apps/contants/sizes.dart';
import 'package:apps/contants/text_strings.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              child: Image(
                image:AssetImage(tSplashImage),
                height: 60, 
                width: 60,
              )
            ),
            Positioned(
              top: 80,
              left: tDefautSize,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(TAppName,style: Theme.of(context).textTheme.headline3),
                  Text(tAppTagLine,style: Theme.of(context).textTheme.headlineMedium,)
                ],
              )
            ),
         const    Positioned(
              bottom: 150,
              left: 50,
              right: 50,
              child:  Image(
                image: AssetImage(tSpalshScreenIcon),
                height: 400,
                
                 ),

            ),
            Positioned(
              bottom: 40,
              child: Container(
                width: tSplashConatinerSize,
                height: tSplashConatinerSize,
                color: tPrimaryColor,
              ), 
            
            )
          ],
          
        ),
      ),
    );
  }
}
