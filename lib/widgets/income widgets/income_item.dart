import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_details_model.dart';
import 'package:responsive_dash_board/widgets/income%20widgets/income_item_details.dart';

class IncomeItems extends StatelessWidget {
  IncomeItems({super.key});

  List<IncomeDetailsModel> items = [
    IncomeDetailsModel(
        color: const Color(0xFF208CC8),
        percentage: '40%',
        title: 'Design service'),
    IncomeDetailsModel(
        color: const Color(0xFF4EB7F2),
        percentage: '25%',
        title: 'Design product'),
    IncomeDetailsModel(
        color: const Color(0xFF064061),
        percentage: '20%',
        title: 'Product royalti'),
    IncomeDetailsModel(
      color: const Color(0xFFE2DECD),
      percentage: '22%',
      title: 'Other',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return IncomeItemDetails(
          incomeSectiomModel: items[index],
        );
      },
    );
  }
}
