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
        Expanded(
          child: Column(
            children: [Expanded(child: AllExpenses())],
          ),
        ),
      ],
    );
  }
}
