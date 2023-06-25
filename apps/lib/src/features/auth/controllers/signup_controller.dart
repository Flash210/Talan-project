import 'package:apps/src/repository/auth_repo/auth_repo.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

// Text field controller to get data from TextFields
  final email = TextEditingController();
  final password = TextEditingController();
  final fullName = TextEditingController();
  final phoneNo = TextEditingController();

//Call this fn from the design
  void registredUser(String email, String password) {
    AuthenticationRepository.intance
        .createUserWithEmailAndPassword(email, password);
  }
}
