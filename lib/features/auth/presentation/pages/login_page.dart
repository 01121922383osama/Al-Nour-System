import '../../../../core/constants/app_colors.dart';
import '../../../../core/extension/screen_utils.dart';
import '../../../../core/widget/resposive_view.dart';
import '../widgets/build_input_widget.dart';
import '../widgets/build_language.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsManager.moreLightGray.withOpacity(0.8),
      appBar: AppBar(
        backgroundColor: ColorsManager.transparent,
        elevation: 0,
        actions: const [
          BuildLanguageIcon(),
        ],
      ),
      body: ResponSiveView(
        mobile: AnimatedContainer(
          duration: const Duration(milliseconds: 250),
          width: context.screenWidth,
          height: context.screenHeight,
          margin: EdgeInsetsDirectional.only(
            top: context.screenHeight * 0.025,
            start: context.screenWidth * 0.1,
            end: context.screenWidth * 0.1,
          ),
          child: BuildInPutWidget(
            radius: context.screenWidth * 0.3,
          ),
        ),
        tablet: AnimatedContainer(
          width: context.screenWidth,
          height: context.screenHeight,
          duration: const Duration(milliseconds: 250),
          margin: EdgeInsetsDirectional.only(
            start: context.screenWidth * 0.2,
            end: context.screenWidth * 0.2,
          ),
          child: BuildInPutWidget(
            radius: context.screenWidth * 0.1,
          ),
        ),
        desktop: AnimatedContainer(
          width: context.screenWidth,
          height: context.screenHeight,
          duration: const Duration(milliseconds: 250),
          margin: EdgeInsetsDirectional.only(
            start: context.screenWidth * 0.3,
            end: context.screenWidth * 0.3,
          ),
          child: BuildInPutWidget(
            radius: context.screenWidth * 0.1,
          ),
        ),
      ),
    );
  }
}
