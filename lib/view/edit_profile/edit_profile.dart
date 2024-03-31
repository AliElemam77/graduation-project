import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:graduation_project/common/app_style.dart';
import 'package:graduation_project/common/curved_image_contanier.dart';
import 'package:graduation_project/common/custom_buttom.dart';
import 'package:graduation_project/common/custom_container.dart';
import 'package:graduation_project/common/reusable_text.dart';
import 'package:graduation_project/common/text_field.dart';
import 'package:graduation_project/constant/constant.dart';
import 'package:graduation_project/view/about_us/about_us_page.dart';
import 'package:graduation_project/view/contact_us/contact_us_page.dart';
import 'package:image_picker/image_picker.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  final _textController = TextEditingController();
  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  File? pickedImageFile;
  void pickImage() async {
    final pickedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage == null) {
      return;
    }
    setState(() {
      pickedImageFile = File(pickedImage.path);
    });
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
              CurvedImageContanier(image: 'assets/images/editprofile.png'),
              Positioned(
                left: 39.w,
                top: 280.h,
                child: CustomContanier(
                  height: kheight * 0.65,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ReusableText(
                          text: 'تعديل الملف الشخصي',
                          style: appStyle(24, kPrimary, FontWeight.w700),
                        ),
                        const SizedBox(height: 15),
                        InkWell(
                          onTap: pickImage,
                          child: CircleAvatar(
                            radius: 30.r,
                            foregroundImage: pickedImageFile != null
                                ? FileImage(pickedImageFile!)
                                : null,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ReusableTextField(
                          hintText: 'الاسم بالكامل',
                          controller: _textController,
                        ),
                        ReusableTextField(
                          hintText: 'البريد الالكتروني',
                          controller: _textController,
                        ),
                        ReusableTextField(
                          hintText: 'كلمة المرور',
                          controller: _textController,
                        ),
                        ReusableTextField(
                          hintText: 'العنوان',
                          controller: _textController,
                        ),
                        ReusableTextField(
                          hintText: 'رقم الهاتف',
                          controller: _textController,
                        ),
                        const SizedBox(height: 17),
                        CustomButtom(
                          onTap: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const ContactUsPage(),
                              ),
                            );
                          },
                          width: 210,
                          child: Center(
                            child: ReusableText(
                              text: 'حفظ المتغيرات',
                              style:
                                  appStyle(20, Colors.black, FontWeight.bold),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 10,
                top: 60,
                child: CustomButtom(
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
      ),
    );
  }
}
