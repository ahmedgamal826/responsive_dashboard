import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/sized_config_class.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';
import 'package:responsive_dash_board/widgets/income%20widgets/detailed_icome_chart.dart';
import 'package:responsive_dash_board/widgets/income%20widgets/income_chart.dart';
import 'package:responsive_dash_board/widgets/income%20widgets/income_item.dart';
import 'package:responsive_dash_board/widgets/income%20widgets/income_section_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: const Column(
        children: [
          IncomeSectionHeader(),
          SizedBox(
            height: 16,
          ),
          IncomeSectionBody()
        ],
      ),
    );
  }
}

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return width >= SizedConfigClass.desktop && width < 1525
        ? const Expanded(
            child: Padding(
              padding: EdgeInsets.all(16),
              child: DetailedIcomeChart(),
            ),
          )
        : Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(
                child: IncomeChart(),
              ),
              Expanded(
                flex: 2,
                child: IncomeDetails(),
              )
            ],
          );
  }
}
