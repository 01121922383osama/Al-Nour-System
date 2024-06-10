import 'package:al_noor/features/Category/presentation/pages/category_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/Splash/splash_page.dart';
import '../../features/app/presentation/cubit/app_cubit.dart';
import '../../features/app/presentation/pages/app.dart';
import '../../features/auth/presentation/pages/login_page.dart';
import 'rout_name.dart';

class AppRouter {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutName.splash:
        return MaterialPageRoute(builder: (context) => const SplashPage());
      case RoutName.app:
        return MaterialPageRoute(
            builder: (context) => BlocProvider(
                  create: (context) => AppCubit(),
                  child: const AppPage(),
                ));
      case RoutName.login:
        return MaterialPageRoute(
          builder: (context) => const LoginPage(),
        );
      case RoutName.addCategory:
        return MaterialPageRoute(
          builder: (context) => const CategoryPage(),
        );
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
