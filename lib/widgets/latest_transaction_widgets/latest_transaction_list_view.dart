import 'package:flutter/material.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_images.dart';
import 'package:responsive_dash_board/widgets/custom_drawer_widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatefulWidget {
  LatestTransactionListView({super.key});

  @override
  _LatestTransactionListViewState createState() =>
      _LatestTransactionListViewState();
}

class _LatestTransactionListViewState extends State<LatestTransactionListView> {
  final ScrollController _scrollController =
      ScrollController(); // ScrollController للتحكم بالتمرير

  final List<UserInfoModel> items = [
    UserInfoModel(
        image: Assets.imagesAvatar1,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Josua Nunito',
        subtitle: 'JoshNunito@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Josua Nunito',
        subtitle: 'JoshNunito@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar2,
        title: 'Josua Nunito',
        subtitle: 'JoshNunito@gmail.com'),
    UserInfoModel(
        image: Assets.imagesAvatar3,
        title: 'Madrani Andi',
        subtitle: 'Madraniadi20@gmail.com'),
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: (details) {
        // التحكم في السحب وتحريك العناصر بناءً على حركة السحب
        _scrollController.position.moveTo(
          _scrollController.position.pixels - details.delta.dx,
        );
      },
      child: SingleChildScrollView(
        controller: _scrollController,
        scrollDirection: Axis.horizontal,
        child: Row(
          children: items
              .map(
                (e) => IntrinsicWidth(
                  child: UserInfoListTile(userInfoModel: e),
                ),
              )
              .toList(),
        ),
      ),
    );

    //////////////////////////// Another Solution //////////////////
    // return GestureDetector(
    //   onHorizontalDragUpdate: (details) {
    //     if (_scrollController.hasClients) {
    //       // التأكد من أن ScrollController متصل
    //       _scrollController.jumpTo(
    //         _scrollController.offset - details.delta.dx, // تحريك العناصر أفقيًا
    //       );
    //     }
    //   },
    //   child: SizedBox(
    //     height: 100,
    //     child: ListView.builder(
    //       controller: _scrollController, // ربط ScrollController بـ ListView
    //       scrollDirection: Axis.horizontal,
    //       itemCount: items.length,
    //       itemBuilder: (context, index) {
    //         return IntrinsicWidth(
    //           child: UserInfoListTile(
    //             userInfoModel: items[index],
    //           ),
    //         );
    //       },
    //     ),
    //   ),
    // );
  }
}
