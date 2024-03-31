import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/common/app_style.dart';
import 'package:graduation_project/common/curved_image_contanier.dart';
import 'package:graduation_project/common/custom_buttom.dart';
import 'package:graduation_project/common/custom_container.dart';
import 'package:graduation_project/common/reusable_text.dart';
import 'package:graduation_project/constant/constant.dart';

class AboutUsPage extends StatelessWidget {
  const AboutUsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: kPrimary,
        width: kwidth,
        height: kheight,
        child: Stack(
          children: [
            CurvedImageContanier(image: 'assets/images/aboutus.png'),
            Positioned(
              left: 39.w,
              top: 285.h,
              child: CustomContanier(
                height: 335.h,
                child: Column(
                  children: [
                    const SizedBox(height: 13),
                    ReusableText(
                      text: 'من ساعد',
                      style: appStyle(22, kPrimary, FontWeight.w700),
                    ),
                    const SizedBox(height: 25),
                    ReusableText(
                      text:
                          'ساعد هي همزة الوصل بين المتبرع \nوشركات المحمول والجمعيات الخيرية.\n ساعد بتوفر للمتبرع وسائل كتيير\n علشان تبرعك يوصل للجهات المستحقة\n من بين طريق التبرع (الرسائل النصية\n(قيمة الرسالة 5 جنيه) ، فودافون كاش \n ، اونلاين من خلال البطاقات الائتمانية\n وكمان تطبيق الموبايل (ساعد)',
                      style: appStyle(15, Colors.black, FontWeight.w500),
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
