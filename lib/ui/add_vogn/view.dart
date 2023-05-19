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

class AddVognPage extends StatefulWidget {
  AddVognPage({Key? key}) : super(key: key);

  @override
  State<AddVognPage> createState() => _AddVognPageState();
}

class _AddVognPageState extends State<AddVognPage> {
  var controller = Get.put(LoginScreenController());
  bool hiddenpassword = true;

   List<FocusNode> _focusNodes = [
  FocusNode(),
];

  @override
  void initState() {
    _focusNodes.forEach((node){
    node.addListener(() {
      setState(() {});
    });
  });
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: AppColors.app_backgroundColor,
          appBar: AppBar(
            // centerTitle: true,
            elevation: 0,
            backgroundColor: AppColors.primaryColor,
            title: ConstantText(title: "Add Vogn",size: 13.sp,textcolor: AppColors.app_textColor,),
            leading: InkWell(
              onTap: () {
                Get.back();
              },
              child: Icon(
                Icons.arrow_back_ios,
                color: Colors.black,
              ),
            ),
          ),
        body: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 6.w),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.end,
              // crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(height: 2.h,),
                Container(
                  height: 15.h,
                  child: CircleAvatar(
                    backgroundColor: Colors.transparent,
                    maxRadius: 6.h,
                    backgroundImage: AssetImage(ImagesUrl.app_logo),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
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
                      title: "Add Vogn",
                      size:16.sp,
                      fontWeight: FontWeight.w900,
                    ),
                  ],
                ),
                 SizedBox(height: 3.h),
                UserNameTextFiled(
                  focusnode: _focusNodes[0],
                  controller: controller.usernamecontroller,
                  validate: (val) {
                    return controller.usernamevalidation(val);
                  },
                  hint: 'Add vogn',
                  icon: Icon(Icons.person,color: _focusNodes[0].hasFocus ? AppColors.primaryColor : Colors.grey.shade300,),
                  visiable: false,
                ),
                      SizedBox(height: 8.h),
                Button(
                  buttontext: 'Add Driver',
                  size: 14.sp,
                  buttontextcolor: AppColors.app_textColor,
                  buttoncolor: AppColors.primaryColor,
                  onpress: () {
                    // controller.FormValidation();
                    Get.toNamed(Paths.AddDriverPage);
                  },
                ),
         
              
              
              
            
              ],
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
