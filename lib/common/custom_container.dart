import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/constant/constant.dart';

class CustomContanier extends StatelessWidget {
  CustomContanier({super.key, required this.child, required this.height});
  Widget child;
  double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: kwidth * 0.8,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(color: kBorder, width: 1, style: BorderStyle.solid),
        boxShadow: const [
          BoxShadow(
            color: kShadow,
            offset: Offset(2, 0),
            spreadRadius: 2,
            blurRadius: 9,
          ),
        ],
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(64.r),
          bottomLeft: Radius.circular(64.r),
        ),
        color: kSecondary,
      ),
      child: child,
    );
  }
}
