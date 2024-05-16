import 'package:flutter/material.dart';

class ResponSiveView extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;
  const ResponSiveView({
    super.key,
    required this.mobile,
    required this.tablet,
    required this.desktop,
  });
  static bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 450;

  static bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width >= 450 &&
      MediaQuery.of(context).size.width < 1100;

  static bool isDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width >= 1100;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth < 450) {
          return mobile!;
        } else if (constraints.maxWidth < 1100 && constraints.maxWidth >= 450) {
          return tablet!;
        } else {
          return desktop!;
        }
      },
    );
  }
}
