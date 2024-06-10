import 'package:al_noor/config/router/rout_name.dart';
import 'package:al_noor/core/constants/app_colors.dart';
import 'package:al_noor/core/extension/navigations.dart';
import 'package:al_noor/core/widget/costtom_sliver_appbar.dart';
import 'package:al_noor/core/widget/culcolate_size.dart';
import 'package:al_noor/core/widget/custom_text.dart';
import 'package:al_noor/core/widget/icon_drawer.dart';
import 'package:al_noor/core/widget/resposive_view.dart';
import 'package:flutter/material.dart';

class BodyDashBoardWidget extends StatelessWidget {
  const BodyDashBoardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        CosttomSliverAppWidget(
          leading: !(ResponSiveView.isDesktop(context))
              ? const IconBackWidget()
              : null,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  context.pushNamed(RoutName.addCategory);
                },
                child: const Chip(
                  label: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomTextWidget(
                        text: 'Add Category',
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: ColorsManager.mainBlue,
                      ),
                      Icon(
                        Icons.add,
                        size: 25,
                        color: ColorsManager.mainBlue,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
        const Build3ItemsWidget(),
      ],
    );
  }
}

class Build3ItemsWidget extends StatelessWidget {
  const Build3ItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: calculateCrossAxisCount(context),
        childAspectRatio: calculateChildAspectRatio(context),
      ),
      itemCount: 3,
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey,
            border: Border.all(color: Colors.grey.shade300),
          ),
          alignment: Alignment.center,
          margin: const EdgeInsets.all(10),
          child: FittedBox(
            child: CustomTextWidget(
              text: _text[index],
            ),
          ),
        );
      },
    );
  }
}

List<String> _text = [
  'عدد الاصناف',
  'عدد المنتجات',
  'عدد المبيعات',
];
