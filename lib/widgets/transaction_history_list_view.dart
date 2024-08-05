import 'package:flutter/material.dart';
import 'package:newrespoapp/models/transaction_model.dart';
import 'package:newrespoapp/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const List<TransactionModel> items = [
    TransactionModel(
      true,
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
    ),
    TransactionModel(
      false,
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: r'$2,000',
    ),
    TransactionModel(
      false,
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM ',
      amount: r'$20,129',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e) => TransactionItem(transactionModel: e)).toList(),
    );
  }
}
