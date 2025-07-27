import 'package:dash_board/widgets/all_expenses.dart';
import 'package:dash_board/widgets/custom_drawar.dart';
import 'package:flutter/material.dart';

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
          child: Column(
            children: [Expanded(child: AllExpenses())],
          ),
        ),
      ],
    );
  }
}
