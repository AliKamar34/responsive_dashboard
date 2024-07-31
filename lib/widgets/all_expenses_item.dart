
import 'package:flutter/material.dart';
import 'package:newrespoapp/models/all_expenses_item_model.dart';
import 'package:newrespoapp/widgets/all_expenses_item_details.dart';
import 'package:newrespoapp/widgets/all_expenses_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({super.key, required this.allExpensesItemModel});
  final AllExpensesItemModel allExpensesItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xfff1f1f1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(image: allExpensesItemModel.image),
          const SizedBox(
            height: 34,
          ),
          AllExpensesItemDetails(
            title: allExpensesItemModel.title,
            value: allExpensesItemModel.value,
            date: allExpensesItemModel.date,
          )
        ],
      ),
    );
  }
}

