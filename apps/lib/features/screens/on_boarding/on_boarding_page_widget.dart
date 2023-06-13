

import 'package:flutter/material.dart';

import '../../../contants/colors.dart';
import '../../../contants/sizes.dart';
import '../../../contants/text_strings.dart';
import '../../models/model_onBoarding.dart';

class onBoardingPageWidget extends StatelessWidget {
  const onBoardingPageWidget({
    super.key,
    required this.m,
  });

  final OnBoardingModel m;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(tDefautSize),
      color: m.bgColor,
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Column(
          children: [
            Image(
              image: AssetImage(m.image),
              height: m.height * 0.5,
            ),
            Text(m.title,
                style: Theme.of(context).textTheme.titleLarge),
            const Text(
              tOnBoardingSub1,
              textAlign: TextAlign.center,
            ),
          ],
        ),
        Text(m.counterText,
            style: Theme.of(context).textTheme.titleLarge),
        const SizedBox(
          height: 50.0,
        )
      ]),
    );
  }
}
