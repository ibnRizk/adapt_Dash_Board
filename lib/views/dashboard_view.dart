import 'package:flutter/material.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dashboard View')),
      body: Center(
        child: const Text('Welcome to the Dashboard View!'),
      ),
    );
  }
}
