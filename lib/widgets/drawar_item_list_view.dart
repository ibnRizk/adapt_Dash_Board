import 'package:flutter/material.dart';

import '../models/drawar_item_model.dart';
import '../utils/app_images.dart';
import 'drawar_item.dart';

class DrawarItemListView extends StatefulWidget {
  const DrawarItemListView({super.key});

  @override
  State<DrawarItemListView> createState() =>
      _DrawarItemListViewState();
}

class _DrawarItemListViewState
    extends State<DrawarItemListView> {
  final List<DrawarItemModel> items = [
    DrawarItemModel(
      title: 'Dashboard',
      image: Assets.imagesDashboard,
    ),
    DrawarItemModel(
      title: 'My Transaction',
      image: Assets.imagesMyTransctions,
    ),
    DrawarItemModel(
      title: 'Statistics',
      image: Assets.imagesStatistics,
    ),
    DrawarItemModel(
      title: 'Wallet Account',
      image: Assets.imagesWalletAccount,
    ),
    DrawarItemModel(
      title: 'My Investments',
      image: Assets.imagesMyInvestments,
    ),
  ];
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawarItem(
              drawarItemModel: items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
