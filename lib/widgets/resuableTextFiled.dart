import 'package:flutter/material.dart';

import '../utils/app_color.dart';

class ReusableTextFiled extends StatelessWidget {
  ReusableTextFiled(
      {super.key,
      required this.hintText,
      this.suffixicon,
      // this.validate,
      // this.controller,
      // this.visiable,
      // required this.keyboardtype
      required this.labeltext});
  var hintText;
  Widget? suffixicon;
  // Function()? validate;
  // TextEditingController? controller;
  // bool? visiable;
  // final keyboardtype;
  var labeltext;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextFormField(
        // keyboardType: keyboardtype,
        style: TextStyle(color: Colors.black),
        // obscureText: visiable!,
        // validator: validate,
        // controller: controller,
        decoration: InputDecoration(
            enabled: true,
            suffixIcon: suffixicon,
            suffixIconColor: Colors.black,
            label: Text(labeltext),
            labelStyle: const TextStyle(color: Colors.black),
            hintText: hintText,

            // hintStyle: TextStyle(color: AppColors.hint),
            focusedErrorBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.purpleAccent)),
            errorBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.purpleAccent)),
            enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(10))),
      ),
    );
  }
}
