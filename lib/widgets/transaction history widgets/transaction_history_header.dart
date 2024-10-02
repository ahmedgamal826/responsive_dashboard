import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Transaction History',
          style: AppStyles.SemiBold16,
        ),
        Text(
          'See all',
          style: AppStyles.Medium16.copyWith(
            color: const Color(0xFF4EB7F2),
          ),
        ),
      ],
    );
  }
}
