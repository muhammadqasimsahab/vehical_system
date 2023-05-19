import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehical_management/ui/homeScreen/home_screen.dart';

class LoginScreenController extends GetxController {
  TextEditingController usernamecontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();
  GlobalKey<FormState> login = GlobalKey<FormState>();

  FormValidation() {
    if (!login.currentState!.validate()) {
      print('Form is Not valid');
    } else {
      print("form are valid");
      Get.to(() => HomeScreen());
    }
  }

  String? usernamevalidation(val) {
    if (val == "") {
      return "please enter your password";
    } else
      return null;
  }

  String? passwordValidation(val) {
    if (val == "") {
      return "please enter your password";
    } else if (val.length < 6) {
      return "please enter miniman 6 char";
    } else
      return null;
  }
}
