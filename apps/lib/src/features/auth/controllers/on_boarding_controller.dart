import 'package:get/get.dart';
import 'package:liquid_swipe/PageHelpers/LiquidController.dart';

import '../../../contants/colors.dart';
import '../../../contants/images_strings.dart';
import '../../../contants/text_strings.dart';
import '../models/model_onBoarding.dart';
import '../screens/on_boarding/on_boarding_page_widget.dart';

class OnBoardingController extends GetxController {
  final controller = LiquidController();
  RxInt currentPageController = 0.obs;

  final pages = [
    onBoardingPageWidget(
      m: OnBoardingModel(
        image: page1,
        title: tOnBoardingTitle1,
        subTitle: tOnBoardingSub1,
        counterText: tOnBoardingCounter1,
        bgColor: tOnBordingPage1Color,
        //height: size.height
      ),
    ),
    onBoardingPageWidget(
      m: OnBoardingModel(
        image: page2,
        title: tOnBoardingTitle2,
        subTitle: tOnBoardingSub2,
        counterText: tOnBoardingCounter2,
        bgColor: tOnBoardingPage2Color,
        // height: size.height
      ),
    ),
    onBoardingPageWidget(
      m: OnBoardingModel(
        image: page3,
        title: tOnBoardingTitle3,
        subTitle: tOnBoardingSub3,
        counterText: tOnBoardingCounter3,
        bgColor: tOnBoardingPage3Color,
        // height: size.height
      ),
    ),
  ];

  void onPageChangeCallback(int activePageIndex) => currentPageController.value = activePageIndex;
  

  skip() => controller.jumpToPage(page: 2);

 animateToNextSlide(){
     int nextpage = controller.currentPage + 1;
                controller.animateToPage(page: nextpage);
 }
 
 }
