import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      this.imageColor,
      this.heightBetween = 0.2,
      this.crossAxisAlignment = CrossAxisAlignment.start,
      this.textAlign});

  final String image, title, subTitle;
  final Color? imageColor;
  final double? heightBetween;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;


    return  Column(


crossAxisAlignment: CrossAxisAlignment.start,
children: [
  Image(
    image: AssetImage(image),
    height: size.height * 0.2),

              const SizedBox(height:10),


 Text(title),
 Text(subTitle)



],

    );
  }
}
