import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:vehical_management/ui/driverScreen/add_driver_screen.dart';
import 'package:vehical_management/ui/package_selection/component/advance_tabbar.dart';
import 'package:vehical_management/ui/package_selection/component/progressive_tabbar.dart';
import 'package:vehical_management/ui/package_selection/component/traditional_tabbar.dart';
import 'package:vehical_management/utils/app_color.dart';
import 'package:vehical_management/utils/constant_text.dart';

class SelectPackage extends StatefulWidget {
  SelectPackage({Key? key}) : super(key: key);

  @override
  _SelectPackageState createState() => _SelectPackageState();
}

class _SelectPackageState extends State<SelectPackage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
          backgroundColor: AppColors.app_backgroundColor,
          appBar: AppBar(
            // centerTitle: true,
            elevation: 0,
            backgroundColor: AppColors.primaryColor,
            title: ConstantText(
              title: "Select Package",
              size: 13.sp,
              textcolor: AppColors.app_textColor,
            ),
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
            padding: EdgeInsets.all(8.0),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 5.h,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(25.0)),
                  child: TabBar(
                    indicator: BoxDecoration(
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.circular(25.0)),
                    labelColor: Colors.black,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      Tab(
                        text: 'Traditional',
                      ),
                      Tab(
                        text: 'Progressive',
                      ),
                      Tab(
                        text: 'Advance',
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8.h),
                SizedBox(
                    height: Get.size.height - 34.h,
                    child: TabBarView(
                      children: [
                        TraditionalTabBar(),
                        ProgressiveTabBar(),
                        AdvanceTabBar(),
                      ],
                    ))
              ],
            ),
          )),
    );
  }
}
