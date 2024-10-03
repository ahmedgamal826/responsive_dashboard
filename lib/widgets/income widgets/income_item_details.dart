import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/income_details_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class IncomeItem extends StatelessWidget {
  const IncomeItem({
    super.key,
    required this.incomeSectiomModel,
  });

  final IncomeDetailsModel incomeSectiomModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.only(left: 10),
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
        style: AppStyles.Regular16(context),
      ),
      trailing: Text(
        incomeSectiomModel.percentage,
        style: AppStyles.Medium16(context),
      ),
    );
  }
}


// Another Solution

// import 'dart:math';

// import 'package:flutter/material.dart';
// import 'package:responsive_dash_board/models/income_details_model.dart';
// import 'package:responsive_dash_board/utils/app_styles.dart';

// class IncomeItem extends StatelessWidget {
//   const IncomeItem({
//     super.key,
//     required this.incomeSectiomModel,
//   });

//   final IncomeDetailsModel incomeSectiomModel;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 16),
//       child: FittedBox(
//         fit: BoxFit.scaleDown,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Container(
//               width: 12,
//               height: 12,
//               decoration: ShapeDecoration(
//                 shape: const OvalBorder(),
//                 color: incomeSectiomModel.color,
//               ),
//             ),
//             const SizedBox(width: 16),
//             Text(
//               incomeSectiomModel.title,
//               style: AppStyles.Regular16,
//             ),
//             const SizedBox(width: 24), // تباعد بين العنوان والنسبة
//             Text(
//               incomeSectiomModel.percentage,
//               style: AppStyles.Medium16,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
