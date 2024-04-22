import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:graduation_project/common/app_style.dart';
import 'package:graduation_project/common/curved_image_contanier.dart';
import 'package:graduation_project/common/custom_buttom.dart';
import 'package:graduation_project/common/custom_container.dart';
import 'package:graduation_project/common/reusable_text.dart';
import 'package:graduation_project/constant/constant.dart';
import 'package:graduation_project/view/pay_page/payment_tile.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kPrimary,
        width: kwidth,
        height: kheight,
        child: Stack(
          children: [
            CurvedImageContanier(image: 'assets/images/pay.png'),
            Positioned(
              top: 270.h,
              left: 52.w,
              child: CustomContanier(
                height: 490.h,
                child: Column(
                  children: [
                    ReusableText(
                      text: 'الدفع',
                      style: appStyle(24, kPrimary, FontWeight.w700),
                    ),
                    SizedBox(height: 12.h),
                    CustomContanier(
                      borderWidth: 2.w,
                      radiue1: 32.r,
                      dx: 0,
                      spreadRadius: 0,
                      blurRadius: 0,
                      width: 265.w,
                      height: 110.h,
                      color: kBorder,
                      borderColor: kPrimary,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 24, top: 13),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                ReusableText(
                                  text: 'المبلغ الاجمالي',
                                  style: appStyle(
                                      12, Colors.black, FontWeight.w800),
                                ),
                                ReusableText(
                                  text: ' 100.00 ج.م',
                                  style: appStyle(
                                      12, Colors.grey, FontWeight.w800),
                                ),
                              ],
                            ),
                          ),
                          Divider(
                            color: kPrimary,
                            thickness: 3.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 24.w, left: 20.w),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ReusableText(
                                  text: ' 100.00 ج.م',
                                  style: appStyle(
                                      12, Colors.grey, FontWeight.w800),
                                ),
                                ReusableText(
                                  text: 'حالة انسانية عاجلة',
                                  style: appStyle(
                                      10, Colors.black, FontWeight.w700),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 8.h),
                    CustomContanier(
                      borderWidth: 2.w,
                      radiue1: 0,
                      radius2: 32.r,
                      dx: 0,
                      spreadRadius: 0,
                      blurRadius: 0,
                      width: 265.w,
                      height: 230.h,
                      color: kBorder,
                      borderColor: kPrimary,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                right: 24.w, top: 11.h, bottom: 6.h),
                            child: ReusableText(
                              text: 'خيارات الدفع',
                              style:
                                  appStyle(12, Colors.black, FontWeight.w800),
                            ),
                          ),
                          Divider(
                            indent: 27.w,
                            endIndent: 23.w,
                            color: kPrimary,
                            thickness: 3.h,
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 24.w, left: 20.w),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                PaymentTile(
                                    text: 'كاش',
                                    icon: FontAwesomeIcons.moneyBill1),
                                PaymentTile(
                                    text: 'الرسائل النصية',
                                    icon: FontAwesomeIcons.commentSms),
                                PaymentTile(
                                    text: 'بطاقة الائتمان',
                                    icon: FontAwesomeIcons.ccMastercard),
                                PaymentTile(
                                    text: 'Visa',
                                    icon: FontAwesomeIcons.ccVisa),
                                PaymentTile(
                                    text: 'طريقة دفع اخري',
                                    icon: FontAwesomeIcons.ellipsis),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Center(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(width: 105.w),
                          const Icon(FontAwesomeIcons.commentSms,
                              color: kPrimary, size: 15),
                          SizedBox(width: 10.w),
                          const Icon(FontAwesomeIcons.moneyBill1,
                              color: kPrimary, size: 15),
                          SizedBox(width: 10.w),
                          const Icon(FontAwesomeIcons.ccMastercard,
                              color: kPrimary, size: 15),
                          SizedBox(width: 10.w),
                          const Icon(FontAwesomeIcons.ccVisa,
                              color: kPrimary, size: 15),
                        ],
                      ),
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
