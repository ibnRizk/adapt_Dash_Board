import 'package:dash_board/models/drawar_item_model.dart';
import 'package:flutter/material.dart';

import 'active_andinactive_drawar_item.dart';

class DrawarItem extends StatelessWidget {
  const DrawarItem({
    super.key,
    required this.drawarItemModel,
    required this.isActive,
  });
  final bool isActive;
  final DrawarItemModel drawarItemModel;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? ActiveDrawarItem(drawarItemModel: drawarItemModel)
        : InActiveDrawarItem(
            drawarItemModel: drawarItemModel,
          );
  }
}
