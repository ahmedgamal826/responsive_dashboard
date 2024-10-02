import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/income%20widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income%20widgets/income_item.dart';
import 'package:responsive_dash_board/widgets/income%20widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          const IncomeSectionHeader(),
          const SizedBox(
            height: 16,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Expanded(
                child: IncomeChart(),
              ),
              Expanded(
                child: IncomeItems(),
              )
            ],
          )
        ],
      ),
    );
  }
}
