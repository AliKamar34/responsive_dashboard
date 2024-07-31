
import 'package:flutter/material.dart';
import 'package:newrespoapp/models/all_expenses_item_model.dart';
import 'package:newrespoapp/utils/app_styles.dart';
import 'package:newrespoapp/widgets/all_expenses_item_header.dart';

class InActiveAllExpensesItem extends StatelessWidget {
  const InActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xfff1f1f1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(image: allExpensesItemModel.image),
          const SizedBox(
            height: 34,
          ),
          Column(
            children: [
              Text(
                allExpensesItemModel.title,
                style: AppStyles.styleSemiBold16,
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                allExpensesItemModel.date,
                style: AppStyles.styleRegular14,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                allExpensesItemModel.value,
                style: AppStyles.styleSemiBold24,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ActiveAllExpensesItem extends StatelessWidget {
  const ActiveAllExpensesItem({
    super.key,
    required this.allExpensesItemModel,
  });

  final AllExpensesItemModel allExpensesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xff4EB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            backgroundColor: const Color(0xffFFFFFF).withOpacity(0.1),
            image: allExpensesItemModel.image,
            imageColor: Colors.white,
            iconColor: Colors.white,
          ),
          const SizedBox(
            height: 34,
          ),
          Column(
            children: [
              Text(
                allExpensesItemModel.title,
                style: AppStyles.styleSemiBold16.copyWith(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                allExpensesItemModel.date,
                style: AppStyles.styleRegular14.copyWith(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                allExpensesItemModel.value,
                style: AppStyles.styleSemiBold24.copyWith(
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}