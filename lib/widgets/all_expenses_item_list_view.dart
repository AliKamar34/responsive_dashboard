import 'package:flutter/material.dart';
import 'package:newrespoapp/models/all_expenses_item_model.dart';
import 'package:newrespoapp/utils/app_images.dart';
import 'package:newrespoapp/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final List<AllExpensesItemModel> items = [
    const AllExpensesItemModel(
      date: 'April 2022',
      title: 'Balance',
      image: Assets.imagesMoneys,
      value: r'$20,129',
    ),
    const AllExpensesItemModel(
      date: 'April 2022',
      title: 'Income',
      image: Assets.imagesCardReceive,
      value: r'$20,129',
    ),
    const AllExpensesItemModel(
      date: 'April 2022',
      title: 'Expenses',
      image: Assets.imagesCardSend,
      value: r'$20,129',
    ),
  ];
  int selectedItem = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              upDateIndex(0);
            },
            child: AllExpensesItem(
              isSelected: selectedItem == 0,
              allExpensesItemModel: items[0],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              upDateIndex(1);
            },
            child: AllExpensesItem(
              isSelected: selectedItem == 1,
              allExpensesItemModel: items[1],
            ),
          ),
        ),
        const SizedBox(
          width: 8,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              upDateIndex(2);
            },
            child: AllExpensesItem(
              isSelected: selectedItem == 2,
              allExpensesItemModel: items[2],
            ),
          ),
        ),
      ],
    );
  }

  void upDateIndex(int index) {
    setState(() {
      selectedItem = index;
    });
  }
}
