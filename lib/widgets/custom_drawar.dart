import 'package:dash_board/utils/app_images.dart';
import 'package:dash_board/widgets/user_info_list_tile.dart';
import 'package:flutter/material.dart';

class CustomDrawar extends StatelessWidget {
  const CustomDrawar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          UserInfoListTile(
            image: Assets.imagesAvatar3,
            title: 'Lekan Okeowo',
            subtitle: 'demo@gmail.com',
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
