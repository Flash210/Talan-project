import 'package:flutter/material.dart';
import 'package:traceb/commun_widget/form/form_widget.dart';
import 'package:traceb/constants/images_strings.dart';
import 'package:traceb/constants/size.dart';
import 'package:traceb/constants/text_strings.dart';
import 'package:traceb/features/screens/login/widget/login_footer.dart';

import 'widget/login_form.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding:  EdgeInsets.all(tDefautSize),
            child:   const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:    [
                // *************** Header *****************

                  FormHeaderWidget(
                  title: tWelcomeSentece,
                  subTitle: subTitle,
                  image: tLoginImg,
                ),

                //************ Body  ******************/
                           SizedBox(height:30),

                  LoginForm(),


                 // *********** Footer  ******************
               

                           LoginFooter()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
