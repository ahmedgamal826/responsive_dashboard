import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_history_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/transaction%20history%20widgets/transaction_history_header.dart';
import 'package:responsive_dash_board/widgets/transaction%20history%20widgets/transaction_history_item.dart';
import 'package:responsive_dash_board/widgets/transaction%20history%20widgets/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(
          height: 20,
        ),
        Text(
          '13 April 2022',
          style: AppStyles.Regular16,
        ),
        const SizedBox(
          height: 16,
        ),
        TransactionHistoryListView(),
      ],
    );
  }
}
