// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:vehical_management/routes/app_pages.dart';

import 'package:vehical_management/ui/auth/signupScreen/signup_screen.dart';
import 'package:vehical_management/utils/all_images.dart';
import 'package:vehical_management/utils/app_color.dart';
import 'package:vehical_management/utils/constant_text.dart';

import '../../../controller/login_screen_controller.dart';
import '../../../utils/buttons.dart';
import '../../../widgets/textfiled.dart';
import '../../Forgot Screen/forgot_screen.dart';

class LoginScreen2 extends StatefulWidget {
  LoginScreen2({Key? key}) : super(key: key);

  @override
  State<LoginScreen2> createState() => _LoginScreen2State();
}

class _LoginScreen2State extends State<LoginScreen2> {
  var controller = Get.put(LoginScreenController());
  bool hiddenpassword = true;

  List<FocusNode> _focusNodes = [
    FocusNode(),
    FocusNode(),
  ];

  @override
  void initState() {
    _focusNodes.forEach((node) {
      node.addListener(() {
        setState(() {});
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.app_backgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 5.w),
        child: Form(
          key: controller.login,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                // crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CircleAvatar(
                      backgroundColor: Colors.transparent,
                      maxRadius: 6.h,
                      backgroundImage: AssetImage(ImagesUrl.app_logo)),
                  SizedBox(height: 2.h),
                  ConstantText(
                    textcolor: AppColors.app_textColor,
                    title: "Taxi VAGT Reports",
                    fontWeight: FontWeight.bold,
                    size: 16.sp,
                  ),
                  SizedBox(height: 15.h),
                  Row(
                    children: [
                      ConstantText(
                        title: "Login",
                        size: 17.sp,
                        fontWeight: FontWeight.w900
                      )
                    ],
                  ),
                  SizedBox(height: 3.h),
                  UserNameTextFiled(
                    focusnode: _focusNodes[0],
                    controller: controller.usernamecontroller,
                    validate: (val) {
                      return controller.usernamevalidation(val);
                    },
                    hint: 'User Name',
                    icon: Icon(
                      Icons.person,
                      color: _focusNodes[0].hasFocus
                          ? AppColors.primaryColor
                          : Colors.grey.shade300,
                    ),
                    visiable: false,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  UserNameTextFiled(
                    focusnode: _focusNodes[1],
                    controller: controller.passwordcontroller,
                    validate: (val) {
                      return controller.passwordValidation(val);
                    },
                    hint: 'Password',
                    icon: InkWell(
                        onTap: _togglePasswordView,
                        child: Icon(
                          hiddenpassword
                              ? Icons.visibility_off
                              : Icons.visibility,
                          color: _focusNodes[1].hasFocus
                              ? AppColors.primaryColor
                              : Colors.grey.shade300,
                        )),
                    visiable: hiddenpassword,
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.02),
                  Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    InkWell(
                        child: const Text(
                          'Forgot Password',
                        ),
                        onTap: () {
                          Get.to(ForgotScreen());
                        })
                  ]),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  Button(
                    buttontext: 'Login',
                    buttontextcolor: AppColors.app_textColor,
                    size: 14.sp,
                    buttoncolor: AppColors.primaryColor,
                    onpress: () {
                      // controller.FormValidation();
                      Get.toNamed(Paths.SelectPackage);
                    },
                  ),
                  SizedBox(height: MediaQuery.of(context).size.height * 0.04),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(right: 5.w),
                        height: 0.15.h,
                        width: 30.w,
                        color: AppColors.linecolor,
                      ),
                      const Text('OR'),
                      SizedBox(height: 2.h),
                      Container(
                        margin: EdgeInsets.only(left: 5.w),
                        height: 0.15.h,
                        width: 30.w,
                        color: AppColors.linecolor,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 2.h
                  ),
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ConstantText(
                          title: "Don't have an account!",
                          size: 13.sp,
                        ),
                        InkWell(
                          onTap: () {
                            // Get.to(SignupScreen());
                            Get.toNamed(Paths.SignupScreen);
                          },
                          child: Text(' SignUp',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 13.sp,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.app_textColor)),
                        )
                      ]),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void _togglePasswordView() {
    // if (hiddenpassword == true) {
    //   hiddenpassword = false;
    // } else {
    //   hiddenpassword = true;
    // }
    hiddenpassword = !hiddenpassword;
    setState(() {});
  }
}
