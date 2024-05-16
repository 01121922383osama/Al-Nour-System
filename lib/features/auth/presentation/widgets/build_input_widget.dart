import 'package:al_noor/core/constants/app_colors.dart';
import 'package:al_noor/core/constants/app_images.dart';
import 'package:al_noor/core/widget/cusstom_buttom.dart';
import 'package:al_noor/core/widget/custom_sizedbox.dart';
import 'package:al_noor/core/widget/custom_text_field.dart';
import 'package:al_noor/features/auth/presentation/widgets/build_security.dart';
import 'package:al_noor/features/auth/presentation/widgets/build_text.dart';
import 'package:flutter/material.dart';

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
            const CustomTextFieldWidget(
              hintText: 'Email',
              prefixIcon: Icon(Icons.email, color: ColorsManager.blue),
            ),
            buildSomeSpace(),
            const CustomTextFieldWidget(
              hintText: 'Password',
              prefixIcon: Icon(Icons.lock, color: ColorsManager.blue),
            ),
            buildSomeSpace(),
            CustomButtom(
              buttonText: 'Login',
              onPressed: () {},
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
