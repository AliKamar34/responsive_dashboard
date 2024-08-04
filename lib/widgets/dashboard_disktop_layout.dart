import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newrespoapp/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:newrespoapp/widgets/custom_drawer.dart';
import 'package:newrespoapp/widgets/income_section.dart';
import 'package:newrespoapp/widgets/my_cards_and_transaction_history_section.dart';

class DashBoardDisktopLayout extends StatelessWidget {
  const DashBoardDisktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: AllExpensesAndQuickInvoiceSection(),
          )),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                ),
                MyCardsAndTransactionHistorySection(),
                SizedBox(
                  height: 24,
                ),
                IncomeSection(),
              ],
            ),
          ),
        ),
        // SizedBox(
        //   width: 32,
        // ),
      ],
    );
  }
}
