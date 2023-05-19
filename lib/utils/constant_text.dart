
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:vehical_management/utils/app_color.dart';

class ConstantText extends StatelessWidget {
 String title;
 double? size;
 FontWeight? fontWeight;
 Color? textcolor;
 String? fontfamily;
   ConstantText({
    Key? key,
    required this.title,
    this.size,
    this.fontWeight,
    this.textcolor=AppColors.app_textColor,
    this.fontfamily
  }) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    return Text(
     title,
     style:
         TextStyle(fontSize:size, fontWeight: fontWeight,fontFamily:fontfamily,color: textcolor),
                    );
  }
}