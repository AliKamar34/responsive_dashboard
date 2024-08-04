class TransactionModel{
  final String title, date ,amount;
  final bool  isWithdrawal;

const TransactionModel(this.isWithdrawal, {required this.title, required this.date, required this.amount});
}