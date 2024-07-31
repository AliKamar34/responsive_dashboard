
import 'package:flutter/material.dart';
import 'package:newrespoapp/models/all_expenses_item_model.dart';
import 'package:newrespoapp/utils/app_images.dart';
import 'package:newrespoapp/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatelessWidget {
  const AllExpensesItemListView({super.key});

  static const List<AllExpensesItemModel> items = [
    AllExpensesItemModel(
      date: 'April 2022',
      title: 'Balance',
      image: Assets.imagesMoneys,
      value: r'$20,129',
    ),
    AllExpensesItemModel(
      date: 'April 2022',
      title: 'Income',
      image: Assets.imagesCardReceive,
      value: r'$20,129',
    ),
    AllExpensesItemModel(
      date: 'April 2022',
      title: 'Expenses',
      image: Assets.imagesCardSend,
      value: r'$20,129',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Row(
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: AllExpensesItem(allExpensesItemModel: item),
          ));
        } else {
          return Expanded(child: AllExpensesItem(allExpensesItemModel: item));
        }
      }).toList(),
    );
  }
}
