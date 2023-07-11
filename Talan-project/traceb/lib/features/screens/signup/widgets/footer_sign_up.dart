




import 'package:flutter/material.dart';
import 'package:traceb/constants/images_strings.dart';
import 'package:traceb/constants/text_strings.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Text("Or"),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: (){}, 
            icon: Image(image:AssetImage(tGoogleImg) ),
             label: Text(tLabel)),
        )
      
      ],
    );
  }
}