// import 'package:flutter/material.dart';
// import 'package:responsive_dash_board/models/all_expances_item_model.dart';
// import 'package:responsive_dash_board/widgets/all_expanses_widgets/in_active_and_active_all_expances_item.dart';

// class AllExpansesItem extends StatelessWidget {
//   AllExpansesItem(
//       {super.key,
//       required this.allExpancesItemModel,
//       required this.isSelected});

//   final AllExpancesItemModel allExpancesItemModel;
//   bool isSelected;

//   @override
//   Widget build(BuildContext context) {
//     return isSelected
//         ? ActiveAllExpancesItem(allExpancesItemModel: allExpancesItemModel)
//         : InActiveAllExpancesItem(allExpancesItemModel: allExpancesItemModel);
//   }
// }

// After Using Animation

import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expances_item_model.dart';
import 'package:responsive_dash_board/widgets/all_expanses_widgets/in_active_and_active_all_expances_item.dart';

class AllExpansesItem extends StatelessWidget {
  AllExpansesItem({
    super.key,
    required this.allExpancesItemModel,
    required this.isSelected,
  });

  final AllExpancesItemModel allExpancesItemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedCrossFade(
      duration: const Duration(milliseconds: 300),
      firstChild: SizedBox(
        width: double.infinity, // Ensure the size is constrained
        child:
            InActiveAllExpancesItem(allExpancesItemModel: allExpancesItemModel),
      ),
      secondChild: SizedBox(
        width: double.infinity, // Ensure the size is constrained
        child:
            ActiveAllExpancesItem(allExpancesItemModel: allExpancesItemModel),
      ),
      crossFadeState:
          isSelected ? CrossFadeState.showSecond : CrossFadeState.showFirst,
    );
  }
}
