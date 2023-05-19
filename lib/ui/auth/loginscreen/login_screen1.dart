import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehical_management/ui/homeScreen/home_screen.dart';
import 'package:vehical_management/ui/package_selection/package_selection.dart';
import 'package:vehical_management/utils/app_color.dart';
import 'package:vehical_management/widgets/resuableTextFiled.dart';

import '../../../utils/buttons.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundcolor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Form(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            // const Text(
            //   'SignUp',
            //   style: TextStyle(fontSize: 25, fontWeight: FontWeight.w500),
            // ),
            Image.asset('assets/images/logo1.png', width: 100),
            const SizedBox(height: 20),
            const Text(
              'App for Taxi Vagt Reports',
              style: TextStyle(
                  fontFamily: 'Roboto',
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ReusableTextFiled(
              labeltext: 'Name',
              hintText: '',
              suffixicon: Icon(Icons.person),
            ),
            const SizedBox(height: 30),
            ReusableTextFiled(
              labeltext: 'Phone',
              hintText: '',
              suffixicon: Icon(Icons.phone),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Forgot Password'),
              ],
            ),

            const SizedBox(height: 30),
            Button(
              buttontext: 'Login',
              onpress: () {
                Get.to(HomeScreen());
              },
            ),
            const SizedBox(height: 30),
          ]),
        ),
      ),
    );
  }
}
