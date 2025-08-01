import 'package:flutter/material.dart';

import '../models/transction_model.dart';
import 'transction_item.dart';

class TransctionHistoryListView extends StatelessWidget {
  const TransctionHistoryListView({super.key});

  static const items = [
    TransctionModel(
      title: 'Cash Withdrawal',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
      isWithdrawal: true,
    ),
    TransctionModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
      isWithdrawal: false,
    ),
    TransctionModel(
      title: 'Juni Mobile App project',
      date: '13 Apr, 2022 ',
      amount: r'$20,129',
      isWithdrawal: false,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: items.length,
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return TransctionItem(
          transctionModel: items[index],
        );
      },
    );
  }
}
