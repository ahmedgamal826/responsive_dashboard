import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expanses_widgets/all_expanses.dart';
import 'package:responsive_dash_board/widgets/custom_drawer_widgets/custom_drawer.dart';
import 'package:responsive_dash_board/widgets/latest_transaction_widgets/latest_transaction.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_widgets/quick_invoice.dart';

class DesktopLayout extends StatefulWidget {
  const DesktopLayout({super.key});

  @override
  State<DesktopLayout> createState() => _DesktopLayoutState();
}

class _DesktopLayoutState extends State<DesktopLayout> {
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
          child: Column(
            children: [
              AllExpanses(),
              SizedBox(height: 24),
              QuickInvoice(),
            ],
          ),
        ),
      ],
    );
  }
}
