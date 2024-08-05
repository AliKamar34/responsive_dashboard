import 'package:flutter/material.dart';
import 'package:newrespoapp/utils/size_confige.dart';
import 'package:newrespoapp/widgets/custom_background_container.dart';
import 'package:newrespoapp/widgets/detailed_income_chart.dart';
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
          IncomeBody(),
        ],
      ),
    );
  }
}

class IncomeBody extends StatelessWidget {
  const IncomeBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;

    return width >= SizeConfige.disktop && width < 1750
        ? const Expanded(child: DetailedIncomeChart())
        : const Row(
            children: [
              Expanded(flex: 1, child: IncomeChart()),
              Expanded(flex: 4, child: IncomeDetails()),
            ],
          );
  }
}
