import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_drawer_widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/income%20widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/mycards_and_transaction_history.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_widgets/all_expances_and_quick_invoice_section.dart';

class DashboardTabletLayout extends StatelessWidget {
  const DashboardTabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
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
          ),
        ),
      ],
    );
  }
}
