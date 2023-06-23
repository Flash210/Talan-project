import 'package:apps/src/commun_widget/form/form_widget.dart';
import 'package:apps/src/contants/images_strings.dart';
import 'package:apps/src/contants/sizes.dart';
import 'package:apps/src/contants/text_strings.dart';
import 'package:flutter/material.dart';

import 'login_footer.dart';
import 'login_form.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
   // final size = MediaQuery.of(context).size;

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(tDefautSize),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // ***********  header ****************
      FormHeaderWidget(
        image: tWelcome_img,
       title: tLoginTitle,
        subTitle:tLoginSubTitle),

                // ***********  Body Form  ****************

                 LoginForm(),

                // **************  Footer  *******************
                 LoginFooterWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
