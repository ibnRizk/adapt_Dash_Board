import 'package:dash_board/widgets/custom_drawar.dart';
import 'package:flutter/material.dart';

import 'all_expenses_and_quick_invoice.dart';
import 'income_section.dart';
import 'my_cards_and_transction_history_section.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawar()),
        SizedBox(width: 32),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(top: 40),
            child: AllExpensesAndQuickInvoice(),
          ),
        ),
        SizedBox(width: 24),
        Expanded(
          child: Column(
            children: [
              SizedBox(height: 40),
              MyCardsAndTransctionHistorySection(),
              SizedBox(height: 24),
              Expanded(child: IncomeSection()),
            ],
          ),
        ),
      ],
    );
  }
}
