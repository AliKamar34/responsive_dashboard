
import 'package:flutter/material.dart';
import 'package:newrespoapp/models/income_detail_item_model.dart';
import 'package:newrespoapp/utils/app_styles.dart';

class IncomeDetailsItem extends StatelessWidget {
  const IncomeDetailsItem({super.key, required this.incomeDetailItemModel});
  final IncomeDetailItemModel incomeDetailItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 12,
        width: 12,
        decoration: ShapeDecoration(
          color: incomeDetailItemModel.dotColor,
          shape: const OvalBorder(),
        ),
      ),
      title: Text(
        incomeDetailItemModel.titel,
        style: AppStyles.styleRegular16,
      ),
      trailing: Text(
        incomeDetailItemModel.percent,
        style: AppStyles.styleMeduim16,
      ),
    );
  }
}