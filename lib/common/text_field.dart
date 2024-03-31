import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/common/app_style.dart';
import 'package:graduation_project/constant/constant.dart';

class ReusableTextField extends StatelessWidget {
  ReusableTextField(
      {super.key, required this.hintText, required this.controller});
  String hintText;
  TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, bottom: 5, right: 5, left: 5),
      child: TextField(
        textDirection: TextDirection.rtl,
        controller: controller,
        autocorrect: false,
        decoration: InputDecoration(
          prefixIcon: Image.asset(
            'assets/images/preffix_icon.png',
            height: 11,
            width: 16,
          ),
          hintStyle: appStyle(14, Colors.black54, FontWeight.normal),
          hintTextDirection: TextDirection.rtl,
          hintText: hintText,
          contentPadding: const EdgeInsets.all(10),
          isCollapsed: true,
          isDense: true,
          filled: true,
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kPrimary),
            borderRadius: BorderRadius.circular(28),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kPrimary),
            borderRadius: BorderRadius.circular(28),
          ),
        ),
      ),
    );
  }
}
