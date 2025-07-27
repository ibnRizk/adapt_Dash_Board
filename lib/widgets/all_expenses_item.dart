import 'package:dash_board/utils/app_styles.dart';
import 'package:flutter/material.dart';

import '../models/all_expensess_item_model.dart';
import 'all_expensess_item_header.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem({
    super.key,
    required this.itemModel,
  });
  final AllExpensessItemModel itemModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: Color(0xFFF1F1F1),
          ),
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensessItemHeader(image: itemModel.image),
          SizedBox(height: 34),
          Text(
            itemModel.title,
            style: AppStyles.styleMedium16,
          ),
          SizedBox(height: 8),

          Text(
            itemModel.date,
            style: AppStyles.styleRegular14,
          ),
          SizedBox(height: 16),

          Text(
            itemModel.price,
            style: AppStyles.styleSemiBold24,
          ),
        ],
      ),
    );
  }
}
