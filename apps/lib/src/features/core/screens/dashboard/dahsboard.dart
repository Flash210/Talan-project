import 'package:apps/src/contants/colors.dart';
import 'package:apps/src/contants/images_strings.dart';
import 'package:apps/src/contants/sizes.dart';
import 'package:apps/src/contants/text_strings.dart';
import 'package:apps/src/features/core/screens/dashboard/widgets/dash_app_bar.dart';
import 'package:apps/src/features/core/screens/dashboard/widgets/dash_categories.dart';
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});

  @override
  Widget build(BuildContext context) {
    final txtTheme = Theme.of(context).textTheme;
    return Scaffold(
      // ******************* App Bar *********************

      appBar:const  DashBoardAppBar(),
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
              DashBoardCategories(txtTheme: txtTheme),
              const SizedBox(height: tDashBoardPadding),

// ******************** Banner ********************

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                      child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: tCardBgColor),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Flexible(
                                child: Image(
                              image: AssetImage(tTag),
                              height: 30,
                            )),
                            Flexible(
                                child: Image(
                              image: AssetImage(tTeach),
                            )),
                          ],
                        ),
                        const SizedBox(height: 25),
                        Text(
                          tDashBoardBannerTitle1,
                          style: txtTheme.headline4,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text(
                          tDashBoardSubTitle,
                          style: txtTheme.bodyText2,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  )),
                  const SizedBox(
                    width: tDashBoardPadding,
                  ),
                  Expanded(
                    child: Column(children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: tCardBgColor),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                    child: Image(
                                  image: AssetImage(tTag),
                                  height: 30,
                                )),
                                Flexible(
                                    child: Image(
                                  image: AssetImage(tTeach),
                                )),
                              ],
                            ),
                            const SizedBox(height: 25),
                            Text(
                              tDashBoardBannerTitle2,
                              style: txtTheme.headline4,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            Text(
                              tDashBoardSubTitle,
                              style: txtTheme.bodyText2,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                              onPressed: () {},
                              child: const Text(tDashBoardButton)))
                    ]),
                  )
                ],
              ),

              //************** Top Courses  */
              const SizedBox(height: tDashBoardPadding - 4),

              Text(tDashBoardTopCourses,
                  style: txtTheme.headline4?.apply(fontSizeFactor: 1.2)),

              SizedBox(
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  children: [
                    SizedBox(
                      width: 320,
                      height: 200,
                      child: Padding(

                        padding: const EdgeInsets.only(right: 10,top: 10),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: tCardBgColor),
                          padding: const EdgeInsets.all(7),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Flexible(
                                    child: Text(
                                      "Flutter Crash course ",
                                      style: txtTheme.headline4,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ),
                                  const Flexible(
                                      child: Image(image: AssetImage(tTop))),
                                ],
                              ),
                              SizedBox(height: 6),
                              Row(
                                children: [
                                  ElevatedButton(
                                      onPressed: () {},
                                      style: ElevatedButton.styleFrom(
                                          shape: const CircleBorder()),
                                      child: const Icon(Icons.play_arrow)),
                                  const SizedBox(width: tDashBoardPadding),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text("3 Sections",
                                          style: txtTheme.headline4,
                                          overflow: TextOverflow.ellipsis),
                                      Text("Programming Languages ",
                                          style: txtTheme.bodyText2,
                                          overflow: TextOverflow.ellipsis),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),


                     SizedBox(
                      width: 320,
                      height: 200,
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: tCardBgColor),
                        padding: const EdgeInsets.all(7),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(
                                    "Flutter Crash course ",
                                    style: txtTheme.headline4,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                                const Flexible(
                                    child: Image(image: AssetImage(tTop))),
                              ],
                            ),
                            SizedBox(height: 6),
                            Row(
                              children: [
                                ElevatedButton(
                                    onPressed: () {},
                                    style: ElevatedButton.styleFrom(
                                        shape: const CircleBorder()),
                                    child: const Icon(Icons.play_arrow)),
                                const SizedBox(width: tDashBoardPadding),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text("3 Sections",
                                        style: txtTheme.headline4,
                                        overflow: TextOverflow.ellipsis),
                                    Text("Programming Languages ",
                                        style: txtTheme.bodyText2,
                                        overflow: TextOverflow.ellipsis),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

