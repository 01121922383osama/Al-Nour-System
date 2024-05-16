import 'package:al_noor/core/constants/app_colors.dart';
import 'package:flutter/material.dart';

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
      child: Text(
        buttonText,
        style: const TextStyle(
          fontSize: 16,
          color: ColorsManager.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
