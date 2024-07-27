import 'package:flutter/material.dart';
import 'package:newrespoapp/widgets/adaptive_layout_widget.dart';

class DashBoardView extends StatelessWidget {
  const DashBoardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
          mobileLayout: (context) => SizedBox(),
          tabletLayout: (context) => SizedBox(),
          desktopLayout: (context) => SizedBox()),
    );
  }
}
