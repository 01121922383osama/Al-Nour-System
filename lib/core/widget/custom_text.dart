import 'package:flutter/material.dart';

class CustomTextWidget extends StatelessWidget {
  final String text;
  final TextStyle? textStyle;
  final double? fontSize;
  final Color? color;
  final FontWeight? fontWeight;
  final TextAlign? textAlign;
  final TextDecoration? textDecoration;
  const CustomTextWidget({
    super.key,
    required this.text,
    this.fontSize = 25,
    this.color,
    this.fontWeight = FontWeight.bold,
    this.textAlign,
    this.textDecoration = TextDecoration.none,
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: textStyle ??
          TextStyle(
            fontSize: fontSize,
            color: color,
            fontWeight: fontWeight,
            decoration: textDecoration,
          ),
      textAlign: textAlign ?? TextAlign.center,
    );
  }
}
