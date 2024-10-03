import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expanses_widgets/all_expanses.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_widgets/quick_invoice.dart';

class AllWxpancesAndQuickInvoiceSection extends StatelessWidget {
  const AllWxpancesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpanses(),
        SizedBox(height: 24),
        QuickInvoice(),
      ],
    );
  }
}
