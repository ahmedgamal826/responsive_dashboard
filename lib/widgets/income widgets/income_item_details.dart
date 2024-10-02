import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_details_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeItemDetails extends StatelessWidget {
  const IncomeItemDetails({
    super.key,
    required this.incomeSectiomModel,
  });

  final IncomeDetailsModel incomeSectiomModel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Container(
            width: 12,
            height: 12,
            decoration: ShapeDecoration(
              shape: const OvalBorder(),
              color: incomeSectiomModel.color,
            ),
          ),
          title: Text(
            incomeSectiomModel.title,
            style: AppStyles.Regular16,
          ),
          trailing: Text(
            incomeSectiomModel.percentage,
            style: AppStyles.Medium16,
          ),
        )
      ],
    );
  }
}
