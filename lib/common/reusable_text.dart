import 'package:flutter/material.dart';

class ReusableText extends StatelessWidget {
  const ReusableText({super.key, required this.text, required this.style});
  final String text;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Text(
      maxLines: 10,
      textDirection: TextDirection.rtl,
      text,
      style: style,
      textAlign: TextAlign.right,
      softWrap: false,
    );
  }
}
