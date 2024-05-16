import 'package:flutter/material.dart';

class BuildLanguageIcon extends StatelessWidget {
  const BuildLanguageIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Chip(
          label: Text('English'),
        ),
        PopupMenuButton(
          iconSize: 35,
          itemBuilder: (context) {
            return const [
              PopupMenuItem(
                value: 'English',
                child: Text('English'),
              ),
              PopupMenuItem(
                value: 'Arabic',
                child: Text('Arabic'),
              ),
            ];
          },
        ),
      ],
    );
  }
}
