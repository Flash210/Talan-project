import 'package:apps/src/features/auth/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();

  RxBool animate = false.obs;

  Future startANimation() async {
    await Future.delayed(const Duration(milliseconds: 500));

    animate.value = true;
    await Future.delayed(const Duration(milliseconds: 3000));

    Get.to( const WelcomeScreen());

    // Navigator.pushReplacement(
    //    context, MaterialPageRoute(builder: (context) => WelcomeScreen()));
  }
}
