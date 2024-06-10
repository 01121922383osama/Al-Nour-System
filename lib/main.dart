import 'package:flutter/material.dart';

import 'config/router/rout_name.dart';
import 'config/router/routs_app.dart';
import 'core/di/injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await init();
  runApp(const AlNourSysytem());
}

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
