




import 'package:flutter/material.dart';
import 'package:traceb/constants/text_strings.dart';

import '../../../commun_widget/form/form_widget.dart';
import '../../../constants/images_strings.dart';
import '../../../constants/size.dart';
import '../login/widget/login_form.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
   child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding:  EdgeInsets.all(tDefautSize),
            child:   Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children:   [
                // *************** Header *****************

                  FormHeaderWidget(
                 title: tSignUpTitle,
                  subTitle: tSignUpSUbTitle,
                  image: tLoginImg,
                ),

                //************ Body  ******************/
                          const SizedBox(height:30),

                  LoginForm(),


                 // *********** Login Btn ******************
                 SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                   child: Text(tSignUp.toUpperCase())
                   ),
                 )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
