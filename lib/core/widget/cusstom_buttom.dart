import 'package:al_noor/core/widget/custom_text.dart';
import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class CustomButtom extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  const CustomButtom({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: ColorsManager.mainBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        minimumSize: const Size(double.infinity, 50),
        elevation: 0,
        shadowColor: Colors.transparent,
        padding: const EdgeInsets.all(16),
      ),
      onPressed: onPressed,
      child: CustomTextWidget(
        text: buttonText,
        fontSize: 16,
        color: ColorsManager.white,
      ),
    );
  }
}
