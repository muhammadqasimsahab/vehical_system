import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vehical_management/routes/app_pages.dart';
import 'package:vehical_management/ui/onbordingScreen/onbording_main_screen.dart';
import 'package:vehical_management/utils/all_images.dart';
import 'package:vehical_management/utils/app_color.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(Duration(milliseconds: 500), () => Get.toNamed(Paths.OnbordingMainScreen));
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: AppColor.splashscreenbackgroundcolor,

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                ImagesUrl.splash1,
                width: 250,
                height: 250,
              ),
              SizedBox(height: 30),
              const Text(
                'App for Taxi Vagt Reports',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ),
      );
  }
}
