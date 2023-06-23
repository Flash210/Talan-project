

import 'package:apps/src/contants/colors.dart';
import 'package:apps/src/contants/images_strings.dart';
import 'package:apps/src/contants/sizes.dart';
import 'package:apps/src/contants/text_strings.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(

                                             // ******************* App Bar *********************

      appBar: AppBar(
        leading: const Icon(Icons.menu,color: Colors.black),
        title: Text(TAppName,style: Theme.of(context).textTheme.headline4),
        centerTitle: true ,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),color:tCardBgColor
  ),
  child: IconButton(
    onPressed: (){}, 
    icon: const Image(image: AssetImage(tUserProfileImg)),),
          )
        ],
        
      ),
                                                   // ******************* ENd App Bar *********************
body: SingleChildScrollView(
  child: Container(
    padding: const EdgeInsets.all(tDashBoardPadding),

  ),
),
    );
  }
}