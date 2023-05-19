import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../utils/app_color.dart';
import '../../utils/buttons.dart';
import '../../widgets/textfiled.dart';

class ForgotScreen extends StatelessWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            elevation: 0,
            leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: const Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                )),
            title: const Text(
              'Forgot Password',
              style: TextStyle(color: Colors.black),
            ),
            centerTitle: true,
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 90),
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UserNameTextFiled(
                    hint: 'New Password',
                    controller: null,
                    validate: null,
                    visiable: false,
                  ),
                  SizedBox(height: 30),
                  UserNameTextFiled(
                    hint: 'Confirm Password',
                    controller: null,
                    validate: null,
                    visiable: false,
                  ),
                  SizedBox(height: 30),
                  Button(
                    buttoncolor: AppColors.splashscreentextcolor,
                    buttontext: 'Change Password',
                    onpress: () {
                      // Get.to(MyBottomBar());
                    },
                  )
                ],
              ),
            ),
          )),
    );
  }
}
