import 'package:al_noor/core/constants/app_colors.dart';
import 'package:al_noor/core/widget/custom_text.dart';
import 'package:al_noor/core/widget/resposive_view.dart';
import 'package:flutter/material.dart';

class CosttomSliverAppWidget extends StatelessWidget {
  final List<Widget>? actions;
  final Widget? leading;
  final Widget? title;
  const CosttomSliverAppWidget(
      {super.key, this.actions, this.leading, this.title});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      floating: true,
      snap: true,
      pinned: true,
      leading: leading,
      title: ResponSiveView.isDesktop(context)
          ? title
          : const CustomTextWidget(
              text: 'Al-Noor',
              color: ColorsManager.blue,
            ),
      actions: actions,
    );
  }
}
