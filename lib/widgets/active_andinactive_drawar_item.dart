import 'package:dash_board/models/drawar_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_styles.dart';

class InActiveDrawarItem extends StatelessWidget {
  const InActiveDrawarItem({
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

class ActiveDrawarItem extends StatelessWidget {
  const ActiveDrawarItem({
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
        style: AppStyles.styleBold16,
      ),
      trailing: Container(
        width: 3.27,
        decoration: BoxDecoration(color: Color(0xFF4EB7F2)),
      ),
    );
  }
}
