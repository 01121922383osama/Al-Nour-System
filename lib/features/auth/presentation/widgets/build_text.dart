import 'package:al_noor/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

Widget buildtext() {
  return const Text.rich(
    TextSpan(
      children: [
        TextSpan(
          text: 'If you forget your password!\n',
        ),
        TextSpan(
          text: 'Contact with us\n',
          style: TextStyle(
            color: ColorsManager.mainBlue,
            decoration: TextDecoration.underline,
          ),
        ),
        TextSpan(
          text: '01147566910',
          style: TextStyle(
            color: ColorsManager.mainBlue,
            decoration: TextDecoration.underline,
          ),
        ),
      ],
    ),
    textAlign: TextAlign.center,
  );
}
