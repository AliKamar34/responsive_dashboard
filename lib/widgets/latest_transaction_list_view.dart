import 'package:flutter/material.dart';
import 'package:newrespoapp/models/user_info_model.dart';
import 'package:newrespoapp/utils/app_images.dart';
import 'package:newrespoapp/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const List<UserInfoModel> latestUsers = [
    UserInfoModel(
      image: Assets.imagesAvatar,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
    UserInfoModel(
      image: Assets.imagesAvatar,
      title: 'Madrani Andi',
      subtitle: 'Madraniadi20@gmail',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: latestUsers
            .map((e) => IntrinsicWidth(
                    child: UserInfoListTile(
                  userInfoModel: e,
                )))
            .toList(),
      ),
    );
    
  }
}
