import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controller/login_screen_controller.dart';
import '../../utils/app_color.dart';
import '../../utils/buttons.dart';
import '../../widgets/resuableTextFiled.dart';
import '../../widgets/textfiled.dart';

class AddDriverScreen extends StatefulWidget {
  const AddDriverScreen({super.key});

  @override
  State<AddDriverScreen> createState() => _AddDriverScreenState();
}

class _AddDriverScreenState extends State<AddDriverScreen> {
  var controller = Get.put(LoginScreenController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          title: const Text(
            'ADD DRIVERS',
            style: TextStyle(
                fontSize: 25, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          leading: InkWell(
            onTap: () {
              Get.back();
            },
            child: const Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
          ),
        ),
        body: Scaffold(
          backgroundColor: Colors.white,
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Form(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    UserNameTextFiled(
                      controller: controller.usernamecontroller,
                      validate: (val) {
                        return controller.usernamevalidation(val);
                      },
                      hint: 'Driver Name',
                      icon: Icon(Icons.person),
                      visiable: false,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    UserNameTextFiled(
                      controller: controller.usernamecontroller,
                      validate: (val) {
                        return controller.usernamevalidation(val);
                      },
                      hint: 'Drivere No',
                      icon: Icon(Icons.format_list_numbered),
                      visiable: false,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                    UserNameTextFiled(
                      controller: controller.usernamecontroller,
                      validate: (val) {
                        return controller.usernamevalidation(val);
                      },
                      hint: 'Phone',
                      icon: Icon(Icons.phone),
                      visiable: false,
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                    Button(
                      buttontext: 'Add Driver',
                      onpress: () {},
                    ),
                  ]),
            ),
          ),
        ));
  }
}
