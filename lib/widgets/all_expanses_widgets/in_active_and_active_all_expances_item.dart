import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expances_item_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';
import 'package:responsive_dash_board/widgets/all_expanses_widgets/all_expanses_item_header.dart';

class InActiveAllExpancesItem extends StatelessWidget {
  const InActiveAllExpancesItem({
    super.key,
    required this.allExpancesItemModel,
  });

  final AllExpancesItemModel allExpancesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            color: Color(0xFFF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpansesItemHeader(
            image: allExpancesItemModel.image,
          ),
          const SizedBox(height: 34),
          Text(
            allExpancesItemModel.title,
            style: AppStyles.Medium16,
          ),
          const SizedBox(height: 8),
          Text(
            allExpancesItemModel.date,
            style: AppStyles.Regular14,
          ),
          const SizedBox(height: 16),
          Text(
            allExpancesItemModel.price,
            style: AppStyles.SemiBold24,
          )
        ],
      ),
    );
  }
}

class ActiveAllExpancesItem extends StatelessWidget {
  const ActiveAllExpancesItem({
    super.key,
    required this.allExpancesItemModel,
  });

  final AllExpancesItemModel allExpancesItemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xFF4EB7F2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpansesItemHeader(
            image: allExpancesItemModel.image,
            imageBackground: Colors.white.withOpacity(0.10000000149011612),
            imageColor: Colors.white,
          ),
          const SizedBox(height: 34),
          Text(
            allExpancesItemModel.title,
            style: AppStyles.Medium16.copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            allExpancesItemModel.date,
            style: AppStyles.Regular14.copyWith(
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          Text(
            allExpancesItemModel.price,
            style: AppStyles.SemiBold24.copyWith(
              color: Colors.white,
            ),
          )
        ],
      ),
    );
  }
}
