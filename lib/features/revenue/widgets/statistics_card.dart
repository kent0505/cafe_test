import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/widgets/texts/text_e.dart';

class StatisticsCard extends StatelessWidget {
  const StatisticsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 306,
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 14,
      ),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        children: [
          const Spacer(),
          Container(
            height: 32,
            width: 130,
            decoration: BoxDecoration(
              color: AppColors.textField,
              borderRadius: BorderRadius.circular(16),
            ),
            child: CupertinoButton(
              onPressed: () {
                context.push('/revenue/add');
              },
              padding: EdgeInsets.zero,
              minSize: 32,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/add.svg'),
                  const SizedBox(width: 14),
                  const TextE2('Add New', fontSize: 14),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
