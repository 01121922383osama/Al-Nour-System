import 'package:flutter/material.dart';

class CusttomAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  final List<Widget>? actions;
  final Widget? leading;
  const CusttomAppBarWidget({super.key, this.actions, this.leading});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
      leading: leading,
      title: const Text('Al-Noor'),
      centerTitle: true,
      titleSpacing: 0,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
