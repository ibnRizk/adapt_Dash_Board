import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class TansctionHistoryHeader extends StatelessWidget {
  const TansctionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Transaction History',
          style: AppStyles.styleSemiBold20,
        ),
        Text(
          'See all',
          style: AppStyles.styleMedium16.copyWith(
            color: const Color(0xFF4EB7F2),
          ),
        ),
      ],
    );
  }
}
