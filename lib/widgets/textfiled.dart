import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../utils/app_color.dart';

class UserNameTextFiled extends StatelessWidget {
  UserNameTextFiled(
      {Key? key,
      required this.hint,
      this.icon,
      this.controller,
      this.focusnode,
      this.validate,
      this.visiable})
      : super(key: key);
  final hint;
  Widget? icon;
  TextEditingController? controller;
  final validate;
  bool? visiable;
  FocusNode? focusnode;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 7.h,
      child: Theme(
        data: Theme.of(context).copyWith(
          primaryColor: Colors.redAccent,
        ),
        child: TextFormField(
          controller: controller,
          focusNode: focusnode,
          cursorColor: Colors.black,
          style: TextStyle(fontFamily: 'Roboto', fontSize: 12.sp),
          enabled: true,
          // keyboardType: TextInputType.number,
          obscureText: visiable!,

          validator: validate,
          decoration: InputDecoration(
            suffixIconColor: MaterialStateColor.resolveWith((states) =>
                states.contains(MaterialState.focused)
                    ? Colors.black
                    : Colors.grey),
            contentPadding: EdgeInsets.only(top: 4.h, left: 2.w),

            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
              borderSide: const BorderSide(color: AppColors.primaryColor),
            ),

            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.0),
              borderSide: BorderSide(color: Colors.grey.shade300),
            ),
            // errorBorder: const OutlineInputBorder(
            //   borderSide: BorderSide(color: Colors.red),
            // ),
            border: InputBorder.none,
            filled: true,
            fillColor: Colors.white,
            suffixIcon: SizedBox(width: 20.w, height: 20.h, child: icon),
            hintText: hint,
            hintStyle: TextStyle(fontSize: 11.sp),
            // border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
          ),
        ),
      ),
    );
  }
}
