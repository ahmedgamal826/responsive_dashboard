import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/all_expances_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/all_expanses_widgets/all_expanses_item.dart';

class AllExpancesItemListView extends StatefulWidget {
  AllExpancesItemListView({super.key});

  @override
  State<AllExpancesItemListView> createState() =>
      _AllExpancesItemListViewState();
}

class _AllExpancesItemListViewState extends State<AllExpancesItemListView> {
  List<AllExpancesItemModel> items = [
    const AllExpancesItemModel(
      image: Assets.imagesBalance,
      title: 'Balance',
      date: 'April 2022',
      price: r'$20,129',
    ),
    const AllExpancesItemModel(
      image: Assets.imagesIncome,
      title: 'Income',
      date: 'April 2022',
      price: r'$20,129',
    ),
    const AllExpancesItemModel(
      image: Assets.imagesExpenses,
      title: 'Expenses',
      date: 'April 2022',
      price: r'$20,129',
    )
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
        // children: items
        //     .map((e) =>
        //         Expanded(child: AllExpansesItem(allExpancesItemModel: e)))
        //     .toList());

        children: items.asMap().entries.map((e) {
      // as map ==> to get index for children in row
      int index = e.key;
      var item = e.value;

      if (index == 1) {
        // Conainer In the middle
        return Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: AllExpansesItem(
                allExpancesItemModel: item,
                isSelected: selectedIndex == index,
              ),
            ),
          ),
        );
      } else {
        return Expanded(
          child: InkWell(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: AllExpansesItem(
              allExpancesItemModel: item,
              isSelected: selectedIndex == index,
            ),
          ),
        );
      }
    }).toList());
  }
}
