import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/common/app_style.dart';
import 'package:graduation_project/common/reusable_text.dart';

class PaymentTile extends StatelessWidget {
  PaymentTile({super.key, required this.text, required this.icon});
  String text;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 8.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.keyboard_arrow_down_outlined),
          Row(
            children: [
              ReusableText(
                text: text,
                style: appStyle(10, Colors.black, FontWeight.w700),
              ),
              SizedBox(width: 10.w),
              Icon(
                icon,
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
