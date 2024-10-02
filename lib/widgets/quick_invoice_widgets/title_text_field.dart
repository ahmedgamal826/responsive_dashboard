import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/quick_invoice_widgets/custom_text_field.dart';

class TitleTextField extends StatelessWidget {
  TitleTextField({super.key, required this.title, required this.hintText});

  final String title;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: AppStyles.Medium16,
        ),
        const SizedBox(
          height: 12,
        ),
        CustomTextField(
          hintText: hintText,
        ),
      ],
    );
  }
}
