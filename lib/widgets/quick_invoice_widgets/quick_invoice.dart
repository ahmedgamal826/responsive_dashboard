import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_widgets/latest_transaction_widgets/latest_transaction.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_widgets/quick_invoice_form.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: const SingleChildScrollView(
        child: Column(
          children: [
            QuickInvoiceHeader(),
            SizedBox(height: 24),
            LatestTransaction(),
            Divider(
              height: 48,
              color: Color(0xFFF1F1F1),
            ),
            QuickInvoiceForm()
          ],
        ),
      ),
    );
  }
}
