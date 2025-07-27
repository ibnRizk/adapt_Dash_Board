import 'package:dash_board/widgets/all_expenses.dart';
import 'package:dash_board/widgets/custom_drawar.dart';
import 'package:dash_board/widgets/quick_invoice.dart';
import 'package:flutter/material.dart';

import 'all_expenses_and_quick_invoice.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawar()),
        SizedBox(height: 32),
        Expanded(
          flex: 2,
          child: AllExpensesAndQuickInvoice(),
        ),
      ],
    );
  }
}
