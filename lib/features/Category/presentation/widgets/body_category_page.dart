import 'package:al_noor/core/constants/app_colors.dart';
import 'package:al_noor/core/widget/costtom_sliver_appbar.dart';
import 'package:al_noor/core/widget/custom_text.dart';
import 'package:al_noor/features/Category/presentation/widgets/build_field_category.dart';
import 'package:flutter/material.dart';

class BodyCategoryPage extends StatelessWidget {
  const BodyCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        CosttomSliverAppWidget(
          title: CustomTextWidget(
            text: 'Categories',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: ColorsManager.mainBlue,
          ),
        ),
        BuildFieldCategory(),


        
      ],
    );
  }
}
