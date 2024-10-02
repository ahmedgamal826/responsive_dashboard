import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_drawer_widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/income%20widgets/income_section.dart';
import 'package:responsive_dash_board/widgets/mycards_and_transaction_history.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_widgets/all_expances_and_quick_invoice_section.dart';

class DashboardDesktopLayout extends StatefulWidget {
  const DashboardDesktopLayout({super.key});

  @override
  State<DashboardDesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DashboardDesktopLayout> {
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: AllWxpancesAndQuickInvoiceSection(),
        ),
        SizedBox(
          width: 24,
        ),
        Expanded(
          child: Column(
            children: [
              SizedBox(height: 40),
              MycardsAndTransactionHistory(),
              Expanded(child: IncomeSection()),
            ],
          ),
        )
      ],
    );
  }
}
