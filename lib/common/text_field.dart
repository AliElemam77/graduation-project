import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/common/app_style.dart';
import 'package:graduation_project/constant/constant.dart';

class ReusableTextField extends StatelessWidget {
  ReusableTextField({
    super.key,
    required this.hintText,
    required this.controller,
    this.prefix,
    this.keyboardType,
  });
  String hintText;
  TextEditingController controller;
  Widget? prefix;
  TextInputType? keyboardType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 5.h, bottom: 5.h, right: 7.w, left: 7.w),
      child: TextField(
        keyboardType: keyboardType,
        textDirection: TextDirection.rtl,
        controller: controller,
        autocorrect: false,
        decoration: InputDecoration(
          prefixIcon: prefix,
          hintStyle: appStyle(14, Colors.black54, FontWeight.w300),
          hintTextDirection: TextDirection.rtl,
          hintText: hintText,
          contentPadding: EdgeInsets.only(right: 25.w, top: 3.h, bottom: 3.h),
          isCollapsed: true,
          isDense: true,
          filled: true,
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kPrimary, width: 3),
            borderRadius: BorderRadius.circular(28.r),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: kPrimary, width: 2),
            borderRadius: BorderRadius.circular(28.r),
          ),
        ),
      ),
    );
  }
}
