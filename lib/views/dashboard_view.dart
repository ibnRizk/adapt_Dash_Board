import 'package:dash_board/widgets/adaptive_layout_widget.dart';
import 'package:flutter/material.dart';

import '../widgets/dashboard_desktop_layout.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AdaptiveLayout(
        mobileLayout: (context) => SizedBox(),
        tabletLayout: (context) => SizedBox(),
        desktopLayout: (context) =>
            DashboardDesktopLayout(),
      ),
    );
  }
}
