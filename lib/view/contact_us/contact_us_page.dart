import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/common/app_style.dart';
import 'package:graduation_project/common/curved_image_contanier.dart';
import 'package:graduation_project/common/custom_buttom.dart';
import 'package:graduation_project/common/custom_container.dart';
import 'package:graduation_project/common/reusable_text.dart';
import 'package:graduation_project/constant/constant.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kPrimary,
        width: kwidth,
        height: kheight,
        child: Stack(
          children: [
            CurvedImageContanier(image: 'assets/images/contactus.png'),
            Positioned(
              left: 52.w,
              top: 285.h,
              child: CustomContanier(
                height: 310.h,
                child: Column(
                  children: [
                    SizedBox(height: 13.h),
                    ReusableText(
                      text: 'تواصل معنا',
                      style: appStyle(22, kPrimary, FontWeight.w700),
                    ),
                    SizedBox(height: 25.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ReusableText(
                          text: '010665544889925',
                          style: appStyle(15, Colors.black, FontWeight.w700),
                        ),
                        SizedBox(width: 15.w),
                        const Icon(FontAwesomeIcons.mobileScreen, size: 25),
                        SizedBox(width: 42.w),
                      ],
                    ),
                    Divider(
                      color: Colors.black,
                      indent: 90.w,
                      endIndent: 90.w,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ReusableText(
                          text: 'saad777@gmail.com',
                          style: appStyle(15, Colors.black, FontWeight.w700),
                        ),
                        SizedBox(width: 15.w),
                        const Icon(FontAwesomeIcons.envelope, size: 25),
                        SizedBox(width: 42.w),
                      ],
                    ),
                    Divider(
                      color: Colors.black,
                      indent: 90.w,
                      endIndent: 90.w,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ReusableText(
                          text: 'الدقهلية ، مصر',
                          style: appStyle(15, Colors.black, FontWeight.w700),
                        ),
                        SizedBox(width: 15.w),
                        const Icon(FontAwesomeIcons.locationDot, size: 25),
                        SizedBox(width: 42.w),
                      ],
                    ),
                    Divider(
                      color: Colors.black,
                      indent: 90.w,
                      endIndent: 90.w,
                    ),
                    const SizedBox(height: 20),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(FontAwesomeIcons.tumblr),
                        SizedBox(width: 20.w),
                        const Icon(FontAwesomeIcons.twitter),
                        SizedBox(width: 20.w),
                        const Icon(FontAwesomeIcons.facebookF),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 10,
              top: 60,
              child: CustomButtom(
                onTap: () {
                  Navigator.of(context).pop();
                },
                width: 40.w,
                child: const Icon(
                  Icons.chevron_right,
                  color: kSecondary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
