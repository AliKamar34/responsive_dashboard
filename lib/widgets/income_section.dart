import 'package:flutter/material.dart';
import 'package:newrespoapp/widgets/custom_background_container.dart';
import 'package:newrespoapp/widgets/income_chart.dart';
import 'package:newrespoapp/widgets/income_details_list_view.dart';
import 'package:newrespoapp/widgets/income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 24,
      child: Column(
        children: [
          IncomeHeader(),
          Row(
            children: [
              Expanded(child: IncomeChart()),
              Expanded(child: IncomeDetails()),
            ],
          ),
        ],
      ),
    );
  }
}

