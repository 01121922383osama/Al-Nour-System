import '../../config/router/rout_name.dart';
import '../../core/constants/app_images.dart';
import '../../core/extension/navigations.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    navigate();
    super.initState();
  }

  void navigate() {
    Future.delayed(
      const Duration(seconds: 2),
      () {
        context.pushNamedAndRemoveUntil(RoutName.login);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          AppImages.logo,
          alignment: Alignment.center,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
