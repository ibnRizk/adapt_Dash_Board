import 'package:dash_board/utils/app_styles.dart';
import 'package:flutter/material.dart';

import 'dots_indicator.dart';
import 'my_cards_page_view.dart';

class MyCardsSection extends StatelessWidget {
  const MyCardsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 420,
          child: Text(
            'My card',
            style: AppStyles.styleSemiBold20,
          ),
        ),
        SizedBox(height: 20),
        MyCardsPageView(),
        SizedBox(height: 20),
        DotsIndicator(),
      ],
    );
  }
}
