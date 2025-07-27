import 'package:dash_board/widgets/custom_drawar.dart';
import 'package:dash_board/widgets/my_cards_page_view.dart';
import 'package:flutter/material.dart';

import 'all_expenses_and_quick_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawar()),
        SizedBox(width: 32),
        Expanded(
          flex: 3,
          child: AllExpensesAndQuickInvoice(),
        ),
        SizedBox(width: 24),

        Expanded(child: MyCardsPageView()),
      ],
    );
  }
}
