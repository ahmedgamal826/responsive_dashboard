import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class DetailedIcomeChart extends StatefulWidget {
  const DetailedIcomeChart({super.key});

  @override
  State<DetailedIcomeChart> createState() => _IncomeChartState();
}

class _IncomeChartState extends State<DetailedIcomeChart> {
  int activeIndex = -1; // as no secion is enabled
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, PieTouchResponse) {
          activeIndex =
              PieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 0 ? 1.3 : null,
          radius: activeIndex == 0 ? 60 : 50,
          value: 40,
          title: activeIndex == 0 ? 'Design service' : '40%',
          titleStyle: AppStyles.Medium16(context).copyWith(
            color: activeIndex == 0 ? Colors.black : Colors.white,
          ),
          color: const Color(0xFF208CC8),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? 2.2 : null,
          radius: activeIndex == 1 ? 60 : 50,
          value: 25,
          title: activeIndex == 1 ? 'Design product' : '25%',
          titleStyle: AppStyles.Medium16(context).copyWith(
            color: activeIndex == 1 ? Colors.black : Colors.white,
          ),
          color: const Color(0xFF4EB7F2),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 1.3 : null,
          radius: activeIndex == 2 ? 60 : 50,
          title: activeIndex == 2 ? 'Product royalti' : '20%',
          titleStyle: AppStyles.Medium16(context).copyWith(
            color: activeIndex == 2 ? Colors.black : Colors.white,
          ),
          value: 20,
          color: const Color(0xFF064061),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1.4 : null,
          radius: activeIndex == 3 ? 60 : 50,
          value: 22,
          title: activeIndex == 3 ? 'Other' : '22%',
          titleStyle: AppStyles.Medium16(context).copyWith(
            color: activeIndex == 3 ? Colors.black : Colors.white,
          ),
          color: const Color(0xFFE2DECD),
        ),
      ],
    );
  }
}
