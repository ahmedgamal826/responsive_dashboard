import 'package:flutter/material.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expanses_widgets/range_option.dart';

class AllExpancesHeader extends StatelessWidget {
  const AllExpancesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.SemiBold20(context),
        ),
        const Expanded(child: SizedBox()),
        const RangeOption()
      ],
    );
  }
}
