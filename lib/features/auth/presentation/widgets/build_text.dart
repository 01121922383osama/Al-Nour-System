import '../../../../core/constants/app_colors.dart';
import 'package:flutter/material.dart';

Widget buildtext() {
  return const Text.rich(
    TextSpan(
      children: [
        TextSpan(
          text: 'If you can not log in!\n',
        ),
        TextSpan(
          text: 'Contact with us\n',
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
