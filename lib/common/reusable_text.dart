import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {
  ReusableText(
      {super.key,
      required this.text,
      required this.style,
      this.textAlign = TextAlign.center});
  final String text;
  final TextStyle style;
  TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 10,
      textDirection: TextDirection.rtl,
      style: style,
      textAlign: TextAlign.right,
      softWrap: false,
    );
  }
}
