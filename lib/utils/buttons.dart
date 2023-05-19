import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class Button extends StatelessWidget {
  Button({
    Key? key,
    required this.buttontext,
    this.buttoncolor,
    this.buttontextcolor,
    this.size,
    this.onpress,
  }) : super(key: key);
  var buttontext;
  var buttoncolor;
  var buttontextcolor;
  var BorderRadiusGeometry;
  double? size;
  Function()? onpress;

  bool isEnabled = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Get.size.width - 20.w,
      height: 5.5.h,
      child: ElevatedButton(
        onPressed: onpress,
        style: ElevatedButton.styleFrom(
          primary: buttoncolor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          // elevation: 15.0,
        ),
        child: Text(
          buttontext,
          style: TextStyle(fontSize: size, color: buttontextcolor),
        ),
      ),
    );
  }
}
