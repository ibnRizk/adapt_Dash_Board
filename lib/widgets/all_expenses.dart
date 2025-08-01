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
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          AllExpensesHeader(),
          SizedBox(height: 16),

          AllExpensessItemsListView(),
        ],
      ),
    );
  }
}
