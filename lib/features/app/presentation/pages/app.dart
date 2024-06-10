import 'package:al_noor/features/settings/presentation/pages/setting_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/extension/screen_utils.dart';
import '../../../../core/widget/custom_drawer.dart';
import '../../../../core/widget/resposive_view.dart';
import '../../../dashboard/presentation/pages/dashboard_page.dart';
import '../cubit/app_cubit.dart';

class AppPage extends StatelessWidget {
  const AppPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawerEnableOpenDragGesture: false,
      drawer: ResponSiveView.isDesktop(context) ? null : const CustomDrawer(),
      body: AnimatedContainer(
        duration: const Duration(seconds: 1),
        child: Row(
          children: [
            if (ResponSiveView.isDesktop(context))
              AnimatedContainer(
                duration: const Duration(milliseconds: 250),
                width: context.screenWidth * 0.135,
                child: const CustomDrawer(),
              ),
            Expanded(
              child: BlocBuilder<AppCubit, int>(
                builder: (context, state) {
                  return Container(
                    child: _getPages[state],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

List<Widget> _getPages = [
  const DashBoardPage(),
  const Text('1'),
  const SettingPage(),
];
