import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/constant/constant.dart';

class CurvedImageContanier extends StatelessWidget {
  CurvedImageContanier({super.key, required this.image});
  String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: kheight * 0.4,
      width: kwidth,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: kShadow,
            offset: Offset(0, 3),
            spreadRadius: 2,
            blurRadius: 4,
          ),
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(140.r),
          bottomRight: Radius.circular(140.r),
        ),
        color: kSecondary,
      ),
      child: Image.asset(
        image,
      ),
    );
  }
}
