import 'package:dash_board/models/drawar_item_model.dart';
import 'package:dash_board/utils/app_images.dart';
import 'package:dash_board/widgets/inactive_drawar_item.dart';
import 'package:dash_board/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

import 'drawar_item_list_view.dart';

class CustomDrawar extends StatelessWidget {
  const CustomDrawar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              image: Assets.imagesAvatar3,
              title: 'Lekan Okeowo',
              subtitle: 'demo@gmail.com',
            ),
          ),
          SliverToBoxAdapter(child: SizedBox(height: 8)),
          DrawarItemListView(),

          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(child: SizedBox(height: 20)),
                InActiveDrawarItem(
                  drawarItemModel: DrawarItemModel(
                    title: 'Setting system',
                    image: Assets.imagesSettings,
                  ),
                ),
                InActiveDrawarItem(
                  drawarItemModel: DrawarItemModel(
                    title: 'Logout account',
                    image: Assets.imagesLogout,
                  ),
                ),
              ],
            ),
          ),

          // SliverToBoxAdapter(
          //   child: InActiveDrawarItem(
          //     drawarItemModel: DrawarItemModel(
          //       title: 'Setting system',
          //       image: Assets.imagesSettings,
          //     ),
          //   ),
          // ),
          // SliverToBoxAdapter(
          //   child: InActiveDrawarItem(
          //     drawarItemModel: DrawarItemModel(
          //       title: 'Logout account',
          //       image: Assets.imagesLogout,
          //     ),
          //   ),
          // ),
          SliverToBoxAdapter(child: SizedBox(height: 48)),
        ],
      ),
    );
  }
}
