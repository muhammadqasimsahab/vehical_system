import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehical_management/ui/auth/otp/otp_screen.dart';
import 'package:vehical_management/ui/homeScreen/home_screen.dart';

class SignupScreenController extends GetxController {
  final companynamecontroller = TextEditingController().obs;
  final emailcontroller = TextEditingController().obs;
  final cvrnumberController = TextEditingController().obs;
  final phoneNumberController = TextEditingController().obs;
  GlobalKey<FormState> signup = GlobalKey<FormState>();

  var isLoading = false.obs;

  final auth = FirebaseAuth.instance;
  FormValidation() {
    if (!signup.currentState!.validate()) {
      print('Form is Not valid');
    } else {
      print("form are valid");
      // Get.to(() => HomeScreen());
    }
  }

  String? companynamevalidation(val) {
    if (val == "") {
      return "please enter your password";
    } else
      return null;
  }
  String? emailValidation(val) {
    if (val == "") {
      return "please enter your password";
    } else if (val.length < 6) {
      return "please enter miniman 6 char";
    } else
      return null;
  }

  String? cvrValidation(val) {
    if (val == "") {
      return "please enter your password";
    } else if (val.length < 6) {
      return "please enter miniman 6 char";
    } else
      return null;
  }


  Future phoneauth() async {
    isLoading(true);
    auth.verifyPhoneNumber(
        phoneNumber: phoneNumberController.value.text,
        verificationCompleted: (_) {
          isLoading(false);
        },
        verificationFailed: (e) {
          isLoading(false);
          print('verification filed');
        },
        codeSent: (String verification, int? token) {
          Get.to(VerifyCodeScreen(verificationId: verification),
              transition: Transition.fadeIn);
          isLoading(true);
        },
        codeAutoRetrievalTimeout: (e) {
          print('timeout');
          isLoading(true);
        });
  }
}
