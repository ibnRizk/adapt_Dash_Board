import 'package:dash_board/models/all_expensess_item_model.dart';
import 'package:dash_board/utils/app_images.dart';
import 'package:dash_board/widgets/all_expenses_item.dart';
import 'package:dash_board/widgets/all_expensess_items_list_view.dart';
import 'package:flutter/material.dart';

import 'all_expenses_header.dart';
import 'custom_background_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),

          AllExpensessItemsListView(),
        ],
      ),
    );
  }
}
