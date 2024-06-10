import 'package:al_noor/core/widget/custom_text.dart';
import 'package:flutter/material.dart';

class BuildLanguageIcon extends StatelessWidget {
  const BuildLanguageIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Chip(
          label: CustomTextWidget(
            text: 'English',
            fontSize: 16,
          ),
        ),
        PopupMenuButton(
          iconSize: 35,
          itemBuilder: (context) {
            return const [
              PopupMenuItem(
                value: 'English',
                child: CustomTextWidget(
                  text: 'English',
                  fontSize: 16,
                ),
              ),
              PopupMenuItem(
                value: 'Arabic',
                child: CustomTextWidget(
                  text: 'Arabic',
                  fontSize: 16,
                ),
              ),
            ];
          },
        ),
      ],
    );
  }
}
