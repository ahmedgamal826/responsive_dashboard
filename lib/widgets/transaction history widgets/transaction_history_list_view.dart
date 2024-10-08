import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/transaction_history_model.dart';
import 'package:responsive_dash_board/widgets/transaction%20history%20widgets/transaction_history_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  TransactionHistoryListView({super.key});

  List<TransactionHistoryModel> items = [
    TransactionHistoryModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
      isWithdrawal: true,
    ),
    TransactionHistoryModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: r'$2,000',
      isWithdrawal: false,
    ),
    TransactionHistoryModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: r'$20,129',
      isWithdrawal: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map((e) => TransactionHistoryItem(
                transactionHistoryModel: e,
              ))
          .toList(),
    );

    // return ListView.builder(
    //   shrinkWrap: true,
    //   // Makes the ListView take up space according to the items.
    //   itemCount: items.length,
    //   itemBuilder: (context, index) {
    //     return TransactionHistoryItem(
    //       transactionHistoryModel: items[index],
    //     );
    //   },
    // );
  }
}
