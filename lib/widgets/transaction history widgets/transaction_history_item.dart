import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_history_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({
    super.key,
    required this.transactionHistoryModel,
  });

  final TransactionHistoryModel transactionHistoryModel;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: const Color(0xFFFAFAFA),
      child: ListTile(
        title: Text(
          transactionHistoryModel.title,
          style: AppStyles.SemiBold16(context).copyWith(
            color: const Color(0xFF064061),
          ),
        ),
        subtitle: Text(
          transactionHistoryModel.date,
          style: AppStyles.Regular16(context).copyWith(
            color: const Color(0xFFAAAAAA),
          ),
        ),
        trailing: Text(
          transactionHistoryModel.amount,
          style: AppStyles.SemiBold20(context).copyWith(
              color: transactionHistoryModel.isWithdrawal
                  ? const Color(0xFFF3735E)
                  : const Color(0xFF7DD97B)),
        ),
      ),
    );
  }
}
