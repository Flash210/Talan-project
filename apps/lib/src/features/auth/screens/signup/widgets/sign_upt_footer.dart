
import 'package:flutter/material.dart';

import '../../../../../contants/images_strings.dart';
import '../../../../../contants/text_strings.dart';

class SIgnUpFooterWidget extends StatelessWidget {
  const SIgnUpFooterWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         Text("OR"),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: (){},
             icon: Image(image: AssetImage(google_img),width: 20.0,),
             label: const Text(tSignInWithGoogle),
             
             ),

        ),

TextButton(
  onPressed: (){},
 child: Text.rich(
  TextSpan(children:[
    TextSpan(text: tAlready,style: Theme.of(context).textTheme.bodyText1),
    TextSpan(text: tLogin.toUpperCase())
  ] )
 ))

      ],
    );
  }
}
