import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/income%20widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/mycards_and_transaction_history.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_widgets/all_expances_and_quick_invoice_section.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllWxpancesAndQuickInvoiceSection(),
          SizedBox(
            height: 24,
          ),
          MycardsAndTransactionHistory(),
          SizedBox(
            height: 24,
          ),
          IncomeSection()
        ],
      ),
    );
  }
}
