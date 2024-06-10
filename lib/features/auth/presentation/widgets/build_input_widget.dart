import 'package:flutter/material.dart';

import '../../../../config/router/rout_name.dart';
import '../../../../core/constants/app_colors.dart';
import '../../../../core/constants/app_images.dart';
import '../../../../core/extension/navigations.dart';
import '../../../../core/widget/cusstom_buttom.dart';
import '../../../../core/widget/custom_sizedbox.dart';
import '../../../../core/widget/custom_text_field.dart';
import 'build_security.dart';
import 'build_text.dart';
import 'show_dialog.dart';

class BuildInPutWidget extends StatelessWidget {
  final double radius;
  const BuildInPutWidget({
    super.key,
    required this.radius,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            buildSomeSpace(),
            CircleAvatar(
              radius: radius,
              backgroundImage: const AssetImage(
                AppImages.logo,
              ),
            ),
            buildSomeSpace(),
            const CostomTextFieldWidget(
              labelText: 'Email',
              prefixIcon: Icon(Icons.email, color: ColorsManager.blue),
            ),
            buildSomeSpace(),
            const CostomTextFieldWidget(
              labelText: 'Password',
              prefixIcon: Icon(Icons.lock, color: ColorsManager.blue),
            ),
            buildSomeSpace(),
            CustomButtom(
              buttonText: 'Login',
              onPressed: () {
                buildShowDialog(
                  context,
                  onCompleted: (value) {
                    if (value == '123456') {
                      context.pushNamedAndRemoveUntil(RoutName.app);
                    }
                  },
                );
              },
            ),
            buildSomeSpace(),
            buildtext(),
            buildSomeSpace(),
            const BuildSecurity(),
          ],
        ),
      ),
    );
  }
}
