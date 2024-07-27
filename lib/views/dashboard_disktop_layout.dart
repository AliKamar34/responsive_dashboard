import 'package:flutter/material.dart';
import 'package:newrespoapp/widgets/custom_drawer.dart';

class DisktopDashBoardLayout extends StatelessWidget {
  const DisktopDashBoardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer()),
      ],
    );
  }
}
