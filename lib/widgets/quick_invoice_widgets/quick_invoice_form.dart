import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_widgets/cusom_button.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_widgets/title_text_field.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Customer name',
                hintText: 'Type customer name',
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                title: 'Customer Email',
                hintText: 'Type customer email',
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextField(
                title: 'Item name',
                hintText: 'Type customer name',
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextField(
                title: 'Item mount',
                hintText: 'USD',
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              child: CusomButton(
                text: 'Add more details',
                backgroundColor: Colors.transparent,
                textColor: const Color(0xFF4EB7F2),
              ),
            ),
            const SizedBox(
              width: 24,
            ),
            Expanded(
              child: CusomButton(
                text: 'Send Money',
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 24,
        ),
      ],
    );
  }
}
