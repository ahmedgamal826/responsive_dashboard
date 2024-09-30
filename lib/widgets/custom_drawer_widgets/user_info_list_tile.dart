import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dash_board/models/user_info_model.dart';
import 'package:responsive_dash_board/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  UserInfoListTile({
    required this.userInfoModel,
    super.key,
  });

  final UserInfoModel userInfoModel;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Card(
        color: const Color(0xFFFAFAFA),
        elevation: 0,
        child: Center(
          child: ListTile(
            leading: SvgPicture.asset(
              userInfoModel.image,
            ),
            title: Text(
              userInfoModel.title,
              style: AppStyles.SemiBold16,
            ),
            subtitle: Text(
              userInfoModel.subtitle,
              style: AppStyles.Regular12,
            ),
          ),
        ),
      ),
    );
  }
}
