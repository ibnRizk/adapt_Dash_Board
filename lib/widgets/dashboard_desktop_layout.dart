import 'package:dash_board/utils/app_styles.dart';
import 'package:dash_board/widgets/custom_drawar.dart';
import 'package:flutter/material.dart';

import 'user_info_list_tile.dart';

class DashboardDesktopLayout extends StatelessWidget {
  const DashboardDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [Expanded(child: CustomDrawar())]);
  }
}
