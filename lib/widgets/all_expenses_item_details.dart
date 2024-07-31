import 'package:flutter/material.dart';
import 'package:newrespoapp/utils/app_styles.dart';

class AllExpensesItemDetails extends StatelessWidget {
  const AllExpensesItemDetails(
      {super.key,
      required this.title,
      required this.value,
      required this.date});
  final String title, value, date;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: AppStyles.styleSemiBold16,
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          date,
          style: AppStyles.styleRegular14,
        ),
        const SizedBox(
          height: 16,
        ),
        Text(
          value,
          style: AppStyles.styleSemiBold24,
        ),
      ],
    );
  }
}
