import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/constant/constant.dart';

class CustomButtom extends StatelessWidget {
  CustomButtom(
      {super.key,
      required this.child,
      required this.width,
      this.onTap,
      this.height = 40});
  Widget child;
  double width, height;
  void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(28.r),
          color: kPrimary,
          border: Border.all(color: kBorder),
        ),
        child: Center(child: child),
      ),
    );
  }
}
