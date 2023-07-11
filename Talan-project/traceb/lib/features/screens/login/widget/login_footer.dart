import 'package:flutter/material.dart';
import 'package:traceb/constants/images_strings.dart';

import '../../../../constants/text_strings.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
          SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                   child: Text(tLogin.toUpperCase())
                   ),
                 ),
        const Text("OR"),
        const SizedBox(height: 10),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              onPressed: () {},
              icon: const Image(
                  image: AssetImage(tGoogleImg), width: 20.0),
              label: const Text(tSignInWithGoogle)),
        ),
        const SizedBox(height: 5),

        TextButton(
          onPressed: (){
        //    Navigator.
          },
           child: Text.rich(
            TextSpan(
              text: tDontHaveAccount,
              style: Theme.of(context).textTheme.bodyText1,
              children: const [
                TextSpan(
                  text: tSignUp,
                  style: TextStyle(color: Colors.blue)
                )
              ]
            ),
           ))
      ],
    );
  }
}