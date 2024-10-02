import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/my%20cards%20widgets/my_cards_section.dart';
import 'package:responsive_dash_board/widgets/transaction%20history%20widgets/transaction_history.dart';

class MycardsAndTransactionHistory extends StatelessWidget {
  const MycardsAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: const Column(
        children: [
          MyCardsSection(),
          Divider(
            height: 40,
            color: Color(0xFFF1F1F1),
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}
