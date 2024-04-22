import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/common/app_style.dart';
import 'package:graduation_project/common/curved_image_contanier.dart';
import 'package:graduation_project/common/custom_container.dart';
import 'package:graduation_project/common/reusable_text.dart';
import 'package:graduation_project/constant/constant.dart';

class RateUsPage extends StatelessWidget {
  const RateUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: kwidth,
        height: kheight,
        color: kPrimary,
        child: Stack(
          children: [
            CurvedImageContanier(image: 'assets/images/rateus.png'),
            Positioned(
              left: 50.w,
              top: 290.h,
              child: CustomContanier(
                height: 210.h,
                child: Column(
                  children: [
                    SizedBox(
                      height: 10.h,
                    ),
                    ReusableText(
                      text: 'التقييم',
                      style: appStyle(24, kPrimary, FontWeight.bold),
                    ),
                    SizedBox(
                      height: 19.h,
                    ),
                    CustomContanier(
                        dx: 0,
                        dy: 0,
                        spreadRadius: 0,
                        blurRadius: 0,
                        width: 240.w,
                        radiue1: 32.r,
                        height: 100.h,
                        color: Colors.white,
                        child: RatingBar(
                          ratingWidget: RatingWidget(),
                          onRatingUpdate: (value) {},
                        )),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
