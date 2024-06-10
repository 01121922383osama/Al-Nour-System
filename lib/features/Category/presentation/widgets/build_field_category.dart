import 'package:al_noor/core/extension/screen_utils.dart';
import 'package:al_noor/core/widget/culcolate_size.dart';
import 'package:al_noor/core/widget/custom_text_field.dart';
import 'package:flutter/material.dart';

class BuildFieldCategory extends StatelessWidget {
  const BuildFieldCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: calculateCrossAxisCount(
          context,
          desktop: 6,
          tablet: 3,
          mobile: 2,
        ),
        childAspectRatio: calculateChildAspectRatio(
          context,
          mobile: context.screenWidth / 80,
          tablet: context.screenWidth / 135,
        ),
      ),
      itemCount: 6,
      itemBuilder: (context, index) {
        return Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: CostomTextFieldWidget(
            labelText: list[index],
            contentPadding:
                const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        );
      },
    );
  }
}

List<String> list = [
  'name',
  'count',
  'priceSell',
  'priceBuy',
  'description',
  'barcode',
];
