import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:newrespoapp/widgets/all_expenses.dart';
import 'package:newrespoapp/widgets/custom_drawer.dart';

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
          child: Column(
            children: [
              Expanded(child: AllExpenses()),
            ],
          ),
        ),
      ],
    );
  }
}
