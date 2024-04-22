import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/common/activation_page.dart';
import 'package:graduation_project/common/app_style.dart';
import 'package:graduation_project/common/curved_image_contanier.dart';
import 'package:graduation_project/common/custom_buttom.dart';
import 'package:graduation_project/common/custom_container.dart';
import 'package:graduation_project/common/reusable_text.dart';
import 'package:graduation_project/common/text_field.dart';
import 'package:graduation_project/constant/constant.dart';

class VolunteerPage extends StatefulWidget {
  const VolunteerPage({super.key});

  @override
  State<VolunteerPage> createState() => _VolunteerPageState();
}

class _VolunteerPageState extends State<VolunteerPage> {
  final _textController = TextEditingController();
  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: kwidth,
          height: kheight,
          color: kPrimary,
          child: Stack(
            children: [
              CurvedImageContanier(image: 'assets/images/volunteering.png'),
              Positioned(
                left: 52.w,
                top: 266.h,
                child: CustomContanier(
                  dx: 2,
                  dy: 0,
                  borderColor: Colors.transparent,
                  borderWidth: 0,
                  blurRadius: 15,
                  spreadRadius: 4,
                  height: kheight * 0.66,
                  child: Column(
                    children: [
                      SizedBox(height: 15.h),
                      ReusableText(
                        text: 'انضم الينا',
                        style: appStyle(24, kPrimary, FontWeight.w700),
                      ),
                      SizedBox(height: 15.h),
                      ReusableTextField(
                          hintText: 'الاسم بالكامل',
                          controller: _textController),
                      ReusableTextField(
                          hintText: 'البريد الالكتروني',
                          controller: _textController),
                      ReusableTextField(
                          hintText: 'رقم الهاتف', controller: _textController),
                      ReusableTextField(
                        hintText: 'الوظيفة',
                        controller: _textController,
                      ),
                      SizedBox(height: 15.h),
                      ReusableText(
                        text: 'المعلومات  الجمعية او المؤسسة:',
                        style: appStyle(15, Colors.white, FontWeight.w700),
                      ),
                      SizedBox(height: 15.h),
                      ReusableTextField(
                          hintText: 'اسم الجمعية أو المؤسسة',
                          controller: _textController),
                      ReusableTextField(
                          hintText: 'العنوان', controller: _textController),
                      ReusableTextField(
                          hintText: 'هل لدى الجمعية ترخيص جمع مالى ساري؟',
                          controller: _textController),
                      ReusableTextField(
                          hintText: 'رقم إشهار الجمعة أو المؤسسة',
                          controller: _textController),
                      SizedBox(height: 15.h),
                      CustomButtom(
                        height: 45.h,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ActivationPage(
                                text: 'تم ارسال طلبك بنجاح',
                                subText:
                                    'سنقوم بالتواصل معك في حالة الموافقة\n                   على طلبك',
                                buttonText: 'استمرار',
                              ),
                            ),
                          );
                        },
                        width: 214.w,
                        child: ReusableText(
                          text: 'ارسال',
                          style: appStyle(20, Colors.black, FontWeight.w700),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
