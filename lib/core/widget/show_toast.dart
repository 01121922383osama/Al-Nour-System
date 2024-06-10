import '../constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_styled_toast/flutter_styled_toast.dart';

void buildshowToast(BuildContext context, {required String message}) {
  showToast(
    message,
    context: context,
    animation: StyledToastAnimation.scale,
    reverseAnimation: StyledToastAnimation.fade,
    backgroundColor: ColorsManager.red,
    position: StyledToastPosition.bottom,
    animDuration: const Duration(seconds: 1),
    duration: const Duration(seconds: 2),
    curve: Curves.elasticOut,
    reverseCurve: Curves.linear,
  );
}
