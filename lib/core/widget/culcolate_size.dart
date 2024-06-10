import 'package:al_noor/core/extension/screen_utils.dart';
import 'package:al_noor/core/widget/resposive_view.dart';
import 'package:flutter/material.dart';

int calculateCrossAxisCount(
  BuildContext context, {
  int? mobile,
  int? tablet,
  int? desktop,
}) {
  if (ResponSiveView.isMobile(context)) {
    return mobile ?? 1;
  } else if (ResponSiveView.isTablet(context)) {
    return tablet ?? 3;
  } else if (ResponSiveView.isDesktop(context)) {
    return desktop ?? 3;
  } else {
    return 3;
  }
}

double calculateChildAspectRatio(
  BuildContext context, {
  double? mobile,
  double? tablet,
  double? desktop,
}) {
  if (ResponSiveView.isMobile(context)) {
    return mobile ?? context.screenWidth / 70;
  }
  if (ResponSiveView.isTablet(context)) {
    return tablet ?? context.screenWidth / 250;
  }
  if (ResponSiveView.isDesktop(context)) {
    return desktop ?? context.screenWidth / 270;
  } else {
    return 4;
  }
}
