import 'package:flutter/material.dart';

import '../../../contants/images_strings.dart';
import '../../../contants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /****  Section 1         *****/

        Image(image: const AssetImage(tWelcome_img), height: size.height * 0.2),
        Text(tLoginTitle, style: Theme.of(context).textTheme.headline1),
        Text(tLoginSubTitle, style: Theme.of(context).textTheme.bodyText1),
        /****  end Section 1         *****/

        /****  Section 2         *****/
      ],
    );
  }
}
