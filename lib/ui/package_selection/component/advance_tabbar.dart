import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:vehical_management/utils/app_color.dart';
import 'package:vehical_management/utils/buttons.dart';
import 'package:vehical_management/utils/constant_text.dart';

class AdvanceTabBar extends StatelessWidget {
  const AdvanceTabBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 15,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ConstantText(
                title: "\$29.99 | per month",
                size: 15.sp,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 4.h),
               Row(
                children: [
                  Icon(
                    Icons.circle,
                    size: 10.sp,
                    color: AppColors.secondry_color,
                  ),
                  SizedBox(width: 6.w),
                  ConstantText(
                    title: "Progressive",
                    size: 13.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ],
              ),
              SizedBox(
                height: 1.3.h,
              ),
              Row(
                children: [
                  Icon(
                    Icons.circle,
                    size: 10.sp,
                    color: AppColors.secondry_color,
                  ),
                  SizedBox(width: 6.w),
                    ConstantText(
                    title: "\$5 per additional vogn",
                    size: 13.sp,
                    fontWeight: FontWeight.normal,
                  ),
                
                ],
              ),
               SizedBox(
                height: 1.3.h,
              ),
               Row(
                children: [
                  Icon(
                    Icons.circle,
                    size: 10.sp,
                    color: AppColors.secondry_color,
                  ),
                  SizedBox(width: 6.w),
               
                   ConstantText(
                    title: "\$5 per additional driver",
                    size: 13.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ],
              ),
               SizedBox(
                height: 1.3.h,
              ),
               Row(
                children: [
                  Icon(
                    Icons.circle,
                    size: 10.sp,
                    color: AppColors.secondry_color,
                  ),
                  SizedBox(width: 6.w),
               
                   ConstantText(
                    title: "Store the VAGT reports",
                    size: 13.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ],
              ),
              SizedBox(
                height: Get.size.height - 74.h,
              ),
              Container(
                width: Get.size.width - 50.w,
                child: Button(
                    buttontext: "BUY NOW",
                    size: 14.sp,
                    buttontextcolor: AppColors.app_textColor,
                    buttoncolor: AppColors.primaryColor,
                    
                    onpress:null ),
              )
            ]),
      ),
   
    );
  }
}
