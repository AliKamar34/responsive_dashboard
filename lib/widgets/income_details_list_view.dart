import 'package:flutter/material.dart';
import 'package:newrespoapp/models/income_detail_item_model.dart';
import 'package:newrespoapp/widgets/income_details_item.dart';

class IncomeDetails extends StatelessWidget {
  const IncomeDetails({super.key});

  static const List<IncomeDetailItemModel> items = [
    IncomeDetailItemModel(
      titel: 'Design service',
      percent: '40%',
      dotColor: Color(0xff208CC8),
    ),
    IncomeDetailItemModel(
      titel: 'Design product',
      percent: '25%',
      dotColor: Color(0xff4EB7F2),
    ),
    IncomeDetailItemModel(
      titel: 'Product royalti',
      percent: '20%',
      dotColor: Color(0xff064061),
    ),
    IncomeDetailItemModel(
      titel: 'Other',
      percent: '22%',
      dotColor: Color(0xffE2DECD),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: items.length,
      itemBuilder: (context, index) {
        return IncomeDetailsItem(incomeDetailItemModel: items[index]);
      },
    );
  }
}

