



import 'package:apps/src/commun_widget/form/form_widget.dart';
import 'package:apps/src/contants/images_strings.dart';
import 'package:apps/src/contants/sizes.dart';
import 'package:apps/src/contants/text_strings.dart';
import 'package:flutter/material.dart';

class ForgetPasswordMailScreen extends StatelessWidget {
  const ForgetPasswordMailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        padding: const EdgeInsets.all(tDefautSize),
        child:const  FormHeaderWidget(
          image: tForgetPassImg, 
          title: tForgetPassword, 
          subTitle: tForgetPAsswordSubTitle,
          crossAxisAlignment: CrossAxisAlignment.center,
          heightBetween: 30.0,
          textAlign: TextAlign.center,
          ),
      ),
    );
  }
}