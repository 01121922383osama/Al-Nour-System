import 'package:al_noor/config/router/rout_name.dart';
import 'package:al_noor/features/Splash/splash_page.dart';
import 'package:al_noor/features/auth/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutName.splash:
        return MaterialPageRoute(builder: (context) => const SplashPage());
      case RoutName.login:
        return MaterialPageRoute(builder: (context) => const LoginPage());
      default:
        return onUnknownRoute(settings);
    }
  }

  static Route? onUnknownRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) {
        return const Scaffold(
          body: Text('Not Found'),
        );
      },
    );
  }
}
