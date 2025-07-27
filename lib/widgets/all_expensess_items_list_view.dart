import 'package:dash_board/widgets/all_expenses_item.dart';
import 'package:flutter/material.dart';

import '../models/all_expensess_item_model.dart';
import '../utils/app_images.dart';

class AllExpensessItemsListView extends StatefulWidget {
  const AllExpensessItemsListView({super.key});

  @override
  State<AllExpensessItemsListView> createState() =>
      _AllExpensessItemsListViewState();
}

final items = [
  AllExpensessItemModel(
    image: Assets.imagesBalance,
    title: 'Balance',
    date: 'April 2022',
    price: r'$20,129',
  ),
  AllExpensessItemModel(
    image: Assets.imagesIncome,
    title: 'Income',
    date: 'April 2022',
    price: r'$20,129',
  ),
  AllExpensessItemModel(
    image: Assets.imagesExpenses,
    title: 'Expenses',
    date: 'April 2022',
    price: r'$20,129',
  ),
];
int selectedIndex = 0;

class _AllExpensessItemsListViewState
    extends State<AllExpensessItemsListView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      // children: items.map((e) => AllExpensessItem(itemModel: e)).toList(),
      children: items.asMap().entries.map((e) {
        int index = e.key;
        var item = e.value;
        if (index == 1) {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndex(index);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                ),
                child: AllExpensessItem(
                  isSelected: selectedIndex == index,
                  itemModel: item,
                ),
              ),
            ),
          );
        } else {
          return Expanded(
            child: GestureDetector(
              onTap: () {
                updateIndex(index);
              },
              child: AllExpensessItem(
                isSelected: selectedIndex == index,
                itemModel: item,
              ),
            ),
          );
        }
      }).toList(),
    );
  }

  void updateIndex(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
