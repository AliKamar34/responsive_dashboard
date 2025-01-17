import 'package:flutter/material.dart';
import 'package:newrespoapp/widgets/all_expenses_header.dart';
import 'package:newrespoapp/widgets/all_expenses_item_list_view.dart';
import 'package:newrespoapp/widgets/custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 20,
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemListView(),
        ],
      ),
    );
  }
}
