import 'package:al_noor/core/widget/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../../core/extension/navigations.dart';
import '../../../../core/widget/custom_sizedbox.dart';

Future<void> buildShowDialog(BuildContext context,
    {required Function(String)? onCompleted}) async {
  showCupertinoDialog(
    context: context,
    builder: (context) {
      return CupertinoAlertDialog(
        title: const Text('Enter the BinCode'),
        content: Material(
          color: ColorsManager.transparent,
          child: Column(
            children: [
              Pinput(
                length: 6,
                autofocus: true,
                showCursor: true,
                defaultPinTheme: const PinTheme(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: ColorsManager.blue,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                  ),
                ),
                onCompleted: onCompleted,
              ),
              buildSomeSpace(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () => context.pop(),
                    child: const CustomTextWidget(
                      text: 'Cancel',
                      color: ColorsManager.blue,
                      fontSize: 16,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const CustomTextWidget(
                      text: 'Submit',
                      color: ColorsManager.blue,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
