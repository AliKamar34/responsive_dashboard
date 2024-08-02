import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newrespoapp/widgets/all_expenses.dart';
import 'package:newrespoapp/widgets/custom_drawer.dart';
import 'package:newrespoapp/widgets/quick_invoice.dart';

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
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 40,
                ),
              ),
              SliverToBoxAdapter(child: AllExpenses()),
              SliverToBoxAdapter(
                child: SizedBox(
                  height: 24,
                ),
              ),
              SliverToBoxAdapter(child: QuickInvoice()),
            ],
          ),
        ),
      ],
    );
  }
}
