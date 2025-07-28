import 'package:dash_board/widgets/adaptive_layout_widget.dart';
import 'package:dash_board/widgets/dashboard_mobile_layout.dart';
import 'package:flutter/material.dart';

import '../widgets/dashboard_desktop_layout.dart';
import '../widgets/dashboard_tablet_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MediaQuery.sizeOf(context).width < 800
          ? AppBar(
              elevation: 0,
              backgroundColor: const Color(0xFFFAFAFA),
              leading: const Icon(Icons.menu),
            )
          : null,
      backgroundColor: Color(0xFFF7F9FA),
      body: AdaptiveLayout(
        mobileLayout: (context) => DashBoardMobileLayout(),
        tabletLayout: (context) => DashBoardTabletLayout(),
        desktopLayout: (context) =>
            DashboardDesktopLayout(),
      ),
    );
  }
}
