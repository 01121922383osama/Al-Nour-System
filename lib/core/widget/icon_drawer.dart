import 'package:flutter/material.dart';

class IconBackWidget extends StatelessWidget {
  const IconBackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Scaffold.of(context).openDrawer();
      },
      icon: const Icon(
        Icons.menu,
      ),
      iconSize: 30,
    );
  }
}

