import 'package:apps/src/features/core/screens/dashboard/dahsboard.dart';
import 'package:apps/src/repository/exception/signup_email_pass_failure.dart';
import 'package:apps/welcome_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get intance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = Rx<User?>(_auth.currentUser);

    firebaseUser.bindStream(_auth.userChanges());

    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user == null
        ? Get.offAll(() => const WelcomeScreen())
        : Get.offAll(() => const DashBoard());
  }

  //Sign up

  Future<void> createUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.createUserWithEmailAndPassword(email: email, password: password);

        firebaseUser.value!=null ? Get.offAll(() =>const DashBoard()) : Get.to(() =>WelcomeScreen());
    } on FirebaseAuthException catch (e) {
      final ex = SignUpEmailPassFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION -  ${ex.msg}');
      throw ex;
    } catch (_) {}
  }

//SIgn in
  Future<void> loginUserWithEmailAndPassword(
      String email, String password) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
    } on FirebaseAuthException catch (e) {
    } catch (_) {}
  }

//Log Out
  Future<void> logout() async => await _auth.signOut();
}
