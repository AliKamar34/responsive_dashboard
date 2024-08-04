import 'package:flutter/material.dart';
import 'package:newrespoapp/widgets/custom_background_container.dart';
import 'package:newrespoapp/widgets/my_card_section.dart';
import 'package:newrespoapp/widgets/transaction_history_section.dart';

class MyCardsAndTransactionHistorySection extends StatelessWidget {
  const MyCardsAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomBackgroundContainer(
      padding: 24,
      child: Column(
        children: [
          MyCardSection(),
          Divider(
            height: 40,
          ),
          TransactionHistorySection(),
        ],
      ),
    );
  }
}
