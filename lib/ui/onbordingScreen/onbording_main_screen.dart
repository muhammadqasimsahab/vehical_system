import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sizer/sizer.dart';
import 'package:vehical_management/routes/app_pages.dart';
import 'package:vehical_management/ui/auth/loginScreen/login_screen1.dart';
import 'package:vehical_management/ui/auth/loginscreen/login_screen2.dart';
import 'package:vehical_management/ui/auth/signupScreen/signup_screen.dart';
import 'package:vehical_management/utils/all_images.dart';
import 'package:vehical_management/utils/app_color.dart';

class OnbordingMainScreen extends StatelessWidget {
  OnbordingMainScreen({super.key});
  final List<PageViewModel> pages = [
    PageViewModel(
      title: '',
      body: 'Vehical Management',
      image:CircleAvatar(
        backgroundColor: Colors.transparent,
        maxRadius: 8.h,
        backgroundImage: AssetImage(ImagesUrl.app_logo),
      ),
    ),
    PageViewModel(
      title: '',
      body: 'Vehical Management',
      // footer: ElevatedButton(
      //   onPressed: () {},
      //   child: const Text('Lets Go'),
      // ),
      image: CircleAvatar(
        backgroundColor: Colors.transparent,
        maxRadius: 8.h,
        backgroundImage: AssetImage(ImagesUrl.app_logo),
      ),
    ),
    PageViewModel(
      title: '',
      body: 'Vehical Management',
      // footer: ElevatedButton(
      //   onPressed: () {},
      //   child: const Text('Lets Go'),
      // ),
      image: CircleAvatar(
        backgroundColor: Colors.transparent,
        maxRadius: 8.h,
        backgroundImage: AssetImage(ImagesUrl.app_logo),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:  EdgeInsets.only(top: 10.h),
        child: IntroductionScreen(
          pages: pages,
          dotsDecorator: const DotsDecorator(
            size: Size(10, 10),
            color: AppColors.indicator_color,
            activeSize: Size.square(15),
            activeColor: AppColors.primaryColor,
          ),
          showDoneButton: true,
          done:  Text(
            'Done',
            style: TextStyle(fontSize: 14.sp, color: Colors.black),
          ),
          showSkipButton: true,
          skip:  Text(
            'Skip',
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.black,
              fontFamily: 'Roboto',
            ),
          ),
          showNextButton: true,
          next:  Icon(
            Icons.arrow_forward,
            size: 20.sp,
            color: Colors.black,
          ),
          onDone: () => onDone(context),
        ),
      ),
    );
  }
}

void onDone(context) {
  // Navigator.pushReplacement(
  //     context, MaterialPageRoute(builder: (context) => LoginScreen2()));
  Get.toNamed(Paths.LoginScreen2);
}
