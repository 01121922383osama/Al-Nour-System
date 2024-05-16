import 'package:al_noor/config/router/rout_name.dart';
import 'package:al_noor/config/router/routs_app.dart';
import 'package:flutter/material.dart';

class AlNourSysytem extends StatelessWidget {
  const AlNourSysytem({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Al Noor System',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.system,
      initialRoute: RoutName.splash,
      onGenerateRoute: AppRouter.onGenerateRoute,
      onUnknownRoute: AppRouter.onUnknownRoute,
    );
  }
}
