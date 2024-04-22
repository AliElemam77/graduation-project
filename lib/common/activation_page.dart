import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/common/app_style.dart';
import 'package:graduation_project/common/custom_buttom.dart';
import 'package:graduation_project/common/reusable_text.dart';
import 'package:graduation_project/constant/constant.dart';

class ActivationPage extends StatelessWidget {
  ActivationPage(
      {super.key,
      required this.text,
      required this.subText,
      required this.buttonText});
  String text, subText, buttonText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/Active.png',
            ),
            SizedBox(height: 20.h),
            ReusableText(
              text: text,
              style: appStyle(24, Colors.white, FontWeight.w700),
            ),
            SizedBox(height: 10.h),
            ReusableText(
              textAlign: TextAlign.center,
              text: subText,
              style: appStyle(14, kGrey, FontWeight.w400),
            ),
            SizedBox(
              height: 100.h,
            ),
            CustomButtom(
              onTap: () {},
              width: 300.w,
              height: 60.h,
              child: ReusableText(
                text: buttonText,
                style: appStyle(18, Colors.black, FontWeight.w700),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: ReusableText(
                text: 'الصفحة الرئيسية',
                style: appStyle(14, kGrey, FontWeight.w400),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
