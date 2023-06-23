import 'package:apps/src/contants/colors.dart';
import 'package:apps/src/contants/images_strings.dart';
import 'package:apps/src/contants/sizes.dart';
import 'package:apps/src/contants/text_strings.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return Scaffold(
      // ******************* App Bar *********************

      appBar: AppBar(
        leading: const Icon(Icons.menu, color: Colors.black),
        title: Text(TAppName, style: Theme.of(context).textTheme.headline4),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 20, top: 7),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: tCardBgColor),
            child: IconButton(
              onPressed: () {},
              icon: const Image(image: AssetImage(tUserProfileImg)),
            ),
          )
        ],
      ),
      // ******************* ENd App Bar *********************
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(tDashBoardPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(tDashBoardTitle, style: txtTheme.bodyText2),
              Text(tDashBoardHeading, style: txtTheme.headline2),

              const SizedBox(height: tDashBoardCardPAdding),

              /////////*  *************  Search Box ************************
              Container(
                decoration: const BoxDecoration(
                    border: Border(left: BorderSide(width: 4))),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(tDashBoardSearch,
                        style: txtTheme.headline2
                            ?.apply(color: Colors.grey.withOpacity(0.5))),
                    const Icon(Icons.mic, size: 25),
                  ],
                ),
              ),
              const SizedBox(height: tDashBoardPadding),

              /////////*  *************  End Search Box ************************

              // Categories
              SizedBox(
                height: 45,
                child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    SizedBox(
                      width: 170,
                      height: 50,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: tDarkColor),
                            child: Center(
                              child: Text("JS",
                                  style: txtTheme.headline6
                                      ?.apply(color: Colors.white)),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Flexible(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Java Script",
                                  style: txtTheme.headline6,
                                  overflow: TextOverflow.ellipsis),
                              Text("10 Lessons",
                                  style: txtTheme.bodyText2,
                                  overflow: TextOverflow.ellipsis),
                            ],
                          )),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 170,
                      height: 50,
                      child: Row(
                        children: [
                          Container(
                            width: 45,
                            height: 45,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: tDarkColor),
                            child: Center(
                              child: Text("JS",
                                  style: txtTheme.headline6
                                      ?.apply(color: Colors.white)),
                            ),
                          ),
                          const SizedBox(width: 5),
                          Flexible(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Java Script",
                                  style: txtTheme.headline6,
                                  overflow: TextOverflow.ellipsis),
                              Text("10 Lessons",
                                  style: txtTheme.bodyText2,
                                  overflow: TextOverflow.ellipsis),
                            ],
                          )),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: tDashBoardPadding),

// ******************** Banner ********************

              Row(
                children: [
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: tCardBgColor),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child:  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      const   Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(child: Image(image: AssetImage(tTag),height: 30,)),
                            Flexible(
                                child: Image(
                              image: AssetImage(tTeach),
                          
                            )),
                          ],
                        ),
                        const  SizedBox(height: 25),
                        Text(
                          tDashBoardBannerTitle1,
                          style: txtTheme.headline4,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),

                        Text(
                          tDashBoardBannerTitle2,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  )),

                  Expanded(
                    child:Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: tCardBgColor),
                          padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                        )
                      ],
                    ) 
                  
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
