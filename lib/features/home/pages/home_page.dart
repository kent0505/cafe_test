import 'package:flutter/material.dart';

import '../../../core/widgets/custom_appbar.dart';
import '../../../core/widgets/custom_scaffold.dart';
import '../widgets/cafe_card.dart';
import '../widgets/coffee_shop_card.dart';
import '../widgets/home_inventory.dart';
import '../widgets/news_card.dart';
import '../widgets/revenue_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        children: [
          const CustomAppbar(
            title: '',
            home: true,
          ),
          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                const SizedBox(height: 12),
                SizedBox(
                  height: 194,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.zero,
                    children: const [
                      SizedBox(width: 24),
                      CafeCard(),
                      CafeCard(),
                      CafeCard(),
                      SizedBox(width: 12),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    SizedBox(width: 24),
                    CoffeeShopCard(),
                    SizedBox(width: 14),
                    HomeInventory(),
                    SizedBox(width: 24),
                  ],
                ),
                const SizedBox(height: 20),
                const Row(
                  children: [
                    SizedBox(width: 24),
                    RevenueCard(),
                    SizedBox(width: 24),
                  ],
                ),
                const SizedBox(height: 14),
                const Row(
                  children: [
                    SizedBox(width: 24),
                    NewsCard(),
                    SizedBox(width: 24),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
