import 'package:flutter/material.dart';
import 'package:newrespoapp/widgets/custom_dot.dart';

class DotsIndicatorGroup extends StatelessWidget {
  const DotsIndicatorGroup({super.key, required this.currentPageIndex});
  final int currentPageIndex;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        3,
        (index) =>  Padding(
          padding: const EdgeInsets.only(right: 6),
          child: CustomDotIndicator(isActive: index == currentPageIndex),
        ),
      ),
    );
  }
}
