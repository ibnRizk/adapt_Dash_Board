import 'package:dash_board/models/drawar_item_model.dart';
import 'package:dash_board/utils/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DrawarItem extends StatelessWidget {
  const DrawarItem({
    super.key,
    required this.drawarItemModel,
  });
  final DrawarItemModel drawarItemModel;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(drawarItemModel.image),
      title: Text(
        drawarItemModel.title,
        style: AppStyles.styleMedium16,
      ),
    );
  }
}
