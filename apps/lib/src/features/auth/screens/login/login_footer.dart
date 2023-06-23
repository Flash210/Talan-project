import 'package:flutter/material.dart';

import '../../../../contants/images_strings.dart';
import '../../../../contants/sizes.dart';
import '../../../../contants/text_strings.dart';



class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text("OR"),
        const SizedBox(height: tFormHeight - 20),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              onPressed: () {},
              icon: const Image(
                  image: AssetImage(google_img), width: 20.0),
              label: const Text(tSignInWithGoogle)),
        ),
        const SizedBox(height: tFormHeight - 20),

        TextButton(
          onPressed: (){},
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
