import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/constant/constant.dart';

class CustomContanier extends StatelessWidget {
  CustomContanier({
    super.key,
    required this.child,
    required this.height,
    this.color = kSecondary,
    this.width = 300,
    this.radiue1 = 64,
    this.radius2 = 0,
    this.dx = 3,
    this.dy = 0,
    this.spreadRadius = 5,
    this.blurRadius = 9,
    this.borderColor = kBorder,
    this.borderWidth = 1,
  });
  Widget child;
  Color color;
  Color borderColor;
  double height,
      width,
      dx,
      dy,
      borderWidth,
      spreadRadius,
      blurRadius,
      radius2,
      radiue1;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        border: Border.all(
            color: borderColor, width: borderWidth, style: BorderStyle.solid),
        boxShadow: [
          BoxShadow(
            color: kShadow,
            offset: Offset(dx, dy),
            spreadRadius: spreadRadius,
            blurRadius: blurRadius,
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(radius2),
          bottomRight: Radius.circular(radius2),
          topRight: Radius.circular(radiue1),
          bottomLeft: Radius.circular(radiue1),
        ),
        color: color,
      ),
      child: child,
    );
  }
}
