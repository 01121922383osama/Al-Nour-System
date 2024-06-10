import 'package:flutter/material.dart';

class CostomDividerWidget extends StatelessWidget {
  const CostomDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Divider(
      thickness: 2,
    );
  }
}

class CostomSliverDividerWidget extends StatelessWidget {
  final Color? color;
  final double? thickness;

  const CostomSliverDividerWidget({super.key, this.color, this.thickness});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Divider(
        color: color,
        thickness: thickness ?? 2,
      ),
    );
  }
}
