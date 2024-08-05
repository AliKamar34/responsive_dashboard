import 'package:flutter/material.dart';
import 'package:newrespoapp/utils/app_styles.dart';
import 'package:newrespoapp/widgets/range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'All Expenses',
          style: AppStyles.styleSemiBold20(context),
        ),
        const RangeOptions(),
      ],
    );
  }
}
