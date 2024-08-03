import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newrespoapp/widgets/all_expenses_and_quick_invoice_section.dart';
import 'package:newrespoapp/widgets/custom_drawer.dart';
import 'package:newrespoapp/widgets/my_card.dart';

class DisktopDashBoardLayout extends StatelessWidget {
  const DisktopDashBoardLayout({super.key});

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
          child: AllExpensesAndQuickInvoiceSection(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          child: MyCard(),
        ),
      ],
    );
  }
}
