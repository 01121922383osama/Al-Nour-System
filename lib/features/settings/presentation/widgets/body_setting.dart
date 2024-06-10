import 'package:al_noor/core/widget/costtom_sliver_appbar.dart';
import 'package:al_noor/core/widget/icon_drawer.dart';
import 'package:al_noor/core/widget/resposive_view.dart';
import 'package:flutter/material.dart';

class BodySettingWidget extends StatelessWidget {
  const BodySettingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CosttomSliverAppWidget(
          leading: !(ResponSiveView.isDesktop(context))
              ? const IconBackWidget()
              : null,
        ),
      ],
    );
  }
}
