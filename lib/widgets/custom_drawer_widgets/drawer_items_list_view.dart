import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/drawer_item_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/custom_drawer_widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({super.key});

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItemModel> items = [
    const DrawerItemModel(image: Assets.imagesDashboard, title: 'Dashboard'),
    const DrawerItemModel(
        image: Assets.imagesMyTransctions, title: 'My Transaction'),
    const DrawerItemModel(image: Assets.imagesStatistics, title: 'Statistics'),
    const DrawerItemModel(
        image: Assets.imagesWalletAccount, title: 'Wallet Account'),
    const DrawerItemModel(
        image: Assets.imagesMyInvestments, title: 'My Investments'),
  ];

  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            if (activeIndex != index) {
              setState(
                () {
                  activeIndex = index;
                  print(activeIndex);
                },
              );
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
