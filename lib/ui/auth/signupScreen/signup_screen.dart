import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:vehical_management/routes/app_pages.dart';
import 'package:vehical_management/utils/app_color.dart';
import 'package:vehical_management/utils/constant_text.dart';
import '../../../controller/signup_controller.dart';
import '../../../utils/all_images.dart';
import '../../../utils/buttons.dart';
import '../../../widgets/textfiled.dart';
class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  var controller = Get.put(SignupScreenController());

  List<FocusNode> _focusNodes = [
    FocusNode(),
    FocusNode(),
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
          key: controller.signup,
          child: SingleChildScrollView(
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              SizedBox(height: 10.h),
              CircleAvatar(
                backgroundColor: Colors.transparent,
                maxRadius: 6.h,
                backgroundImage: AssetImage(ImagesUrl.app_logo),
              ),
              SizedBox(height: 2.h),
              ConstantText(
                  textcolor: AppColors.app_textColor,
                  title: "Taxi VAGT Reports",
                  fontWeight: FontWeight.bold,
                  size: 16.sp),
              SizedBox(height: 10.h),
              Row(
                children: [
                  ConstantText(
                    title: "SignUp",
                    size: 12.sp,
                    fontWeight: FontWeight.w900,
                  ),
                ],
              ),
              SizedBox(height: 3.h),
              UserNameTextFiled(
                  focusnode: _focusNodes[0],
                  controller: controller.companynamecontroller.value,
                  validate: (val) {
                    return controller.companynamevalidation(val);
                  },
                  hint: 'Company Name',
                  icon: Icon(
                    Icons.home,
                    color: _focusNodes[0].hasFocus
                        ? AppColors.primaryColor
                        : Colors.grey.shade300,
                  ),
                  visiable: false),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              UserNameTextFiled(
                  focusnode: _focusNodes[1],
                  controller: controller.phoneNumberController.value,
                  validate: (val) {
                    return controller.companynamevalidation(val);
                  },
                  hint: 'Phone',
                  icon: Icon(
                    Icons.phone,
                    color: _focusNodes[1].hasFocus
                        ? AppColors.primaryColor
                        : Colors.grey.shade300,
                  ),
                  visiable: false),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              UserNameTextFiled(
                  focusnode: _focusNodes[2],
                  controller: controller.emailcontroller.value,
                  validate: (val) {
                    return controller.emailValidation(val);
                  },
                  hint: 'Email',
                  icon: Icon(
                    Icons.email_outlined,
                    color: _focusNodes[2].hasFocus
                        ? AppColors.primaryColor
                        : Colors.grey.shade300,
                  ),
                  visiable: false),
              SizedBox(height: MediaQuery.of(context).size.height * 0.04),
              UserNameTextFiled(
                  focusnode: _focusNodes[3],
                  controller: controller.cvrnumberController.value,
                  validate: (val) {
                    return controller.cvrValidation(val);
                  },
                  hint: 'CVR Number',
                  icon: Icon(
                    Icons.numbers,
                    color: _focusNodes[3].hasFocus
                        ? AppColors.primaryColor
                        : Colors.grey.shade300,
                  ),
                  visiable: false),
              SizedBox(height: 4.h),
              Obx(
                () => controller.isLoading.value
                    ? CircularProgressIndicator()
                    : Button(
                        buttontext: 'SignUp',
                        buttontextcolor: AppColors.app_textColor,
                        buttoncolor: AppColors.primaryColor,
                        size: 14.sp,
                        onpress: () {
                          controller.FormValidation();
                          controller.phoneauth();
                        }),
              ),
              SizedBox(height: 3.h),
              Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ConstantText(
                      title: "Already have an account!",
                      size: 13.sp,
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Paths.LoginScreen2);
                      },
                      child: Text(' SignIn',
                          style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 13.sp,
                              fontWeight: FontWeight.bold,
                              color: AppColors.app_textColor)),
                    )
                  ]),
              SizedBox(height: 4.h),
            ]),
          ),
        ),
      ),
    );
  }
}
