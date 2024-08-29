import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

import '../../../core/utils.dart';
import '../../../core/widgets/buttons/primary_button.dart';
import '../../../core/widgets/custom_appbar.dart';
import '../../../core/widgets/custom_scaffold.dart';
import '../../../core/widgets/no_data.dart';
import '../bloc/inventory_bloc.dart';
import '../widgets/inventory_card.dart';

class InventoryPage extends StatelessWidget {
  const InventoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Stack(
        children: [
          Column(
            children: [
              const CustomAppbar(title: 'Inventory'),
              const SizedBox(height: 12),
              BlocBuilder<InventoryBloc, InventoryState>(
                builder: (context, state) {
                  if (state is InventoryLoadedState) {
                    if (state.inventories.isEmpty) {
                      return const NoData(expanded: true);
                    }

                    return Expanded(
                      child: ListView(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        children: [
                          ...List.generate(
                            state.inventories.length,
                            (index) {
                              return InventoryCard(
                                inventory: state.inventories[index],
                              );
                            },
                          ),
                          const SizedBox(height: 124),
                        ],
                      ),
                    );
                  }

                  return Container();
                },
              ),
            ],
          ),
          Positioned(
            right: 24,
            bottom: 56 + getBottom(context),
            child: PrimaryButton(
              title: '+ New Product',
              width: 165,
              onPressed: () {
                context.push('/inventory/add');
              },
            ),
          ),
        ],
      ),
    );
  }
}
