import 'package:al_noor/core/constants/app_colors.dart';
import 'package:al_noor/core/widget/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../features/app/presentation/cubit/app_cubit.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const CustomTextWidget(
            text: 'Al-Noor',
            color: ColorsManager.mainBlue,
            fontSize: 30,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _text.length,
              itemBuilder: (context, index) {
                return buildListTitle(
                  context: context,
                  icon: icons[index],
                  index: index,
                  onTap: () {
                    context.read<AppCubit>().changeIndex(index: index);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

Widget buildListTitle({
  required BuildContext context,
  required IconData icon,
  required int index,
  VoidCallback? onTap,
}) {
  return BlocBuilder<AppCubit, int>(
    builder: (context, state) {
      return Container(
        decoration: BoxDecoration(
          color: context.read<AppCubit>().state == index
              ? Colors.white
              : ColorsManager.blue.withOpacity(0.5),
          border: Border.all(color: Colors.grey.shade400),
        ),
        child: ListTile(
          onTap: onTap,
          leading: Icon(icon),
          title: FittedBox(
            alignment: Alignment.centerLeft,
            clipBehavior: Clip.hardEdge,
            fit: BoxFit.scaleDown,
            child: CustomTextWidget(
              text: _text[index],
              fontWeight: FontWeight.w500,
              fontSize: 16,
            ),
          ),
        ),
      );
    },
  );
}

List<String> _text = [
  'Dashboard',
  'The Store',
  'Settings',
];

List<IconData> icons = [
  Icons.dashboard,
  Icons.store,
  Icons.settings,
];
