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
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                upDateIndex(index);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 6),
                child: AllExpensesItem(
                  isSelected: selectedItem == index,
                  allExpensesItemModel: item,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                upDateIndex(index);
              },
              child: AllExpensesItem(
                isSelected: selectedItem == index,
                allExpensesItemModel: item,
              ),
            ),
          );
        }
      }).toList(),
    );
  }

  void upDateIndex(int index) {
    setState(() {
      selectedItem = index;
    });
  }
}
