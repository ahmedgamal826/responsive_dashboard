import 'package:flutter/material.dart';
import 'package:responsive_dash_board/widgets/all_expanses_widgets/all_expances_item_list_view.dart';
import 'package:responsive_dash_board/widgets/all_expanses_widgets/all_expanses_header.dart';
import 'package:responsive_dash_board/widgets/custom_background_container.dart';

class AllExpanses extends StatelessWidget {
  const AllExpanses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          const AllExpancesHeader(),
          const SizedBox(height: 8),
          AllExpancesItemListView()
        ],
      ),
    );
  }
}
