


import 'package:flutter/material.dart';
import 'package:traceb/constants/images_strings.dart';
import 'package:traceb/features/screens/login/sign_in_screen.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {


 Future.delayed(Duration(milliseconds: 3000), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const SignInScreen()),
      );
    });

    return const Scaffold(


body: SafeArea(
  child: Stack(
    alignment: Alignment.center,
    children: [

      Image(image: AssetImage(tSplashImage),
    
      ),
    ],
  )

),

    );
  }
}