import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pie_chart/pie_chart.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/widgets/texts/text_e.dart';

class StatisticsCard extends StatefulWidget {
  const StatisticsCard({super.key});

  @override
  State<StatisticsCard> createState() => _StatisticsCardState();
}

class _StatisticsCardState extends State<StatisticsCard> {
  Map<String, double> dataMap = {
    "Sugar": 5,
    "Coffee Cups": 3,
    "Coffee": 2,
    "Dessert": 2,
    "Syrup for Coffee": 2,
  };

  @override
  Widget build(BuildContext context) {
    return Container(
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
          const SizedBox(height: 10),
          PieChart(
            dataMap: dataMap,
            animationDuration: const Duration(milliseconds: 0),
            chartRadius: MediaQuery.of(context).size.width / 3.2,
            colorList: pieChartColors,
            initialAngleInDegree: 0,
            chartType: ChartType.ring,
            ringStrokeWidth: 9,
            centerText: '\$7588',
            centerTextStyle: const TextStyle(
              color: AppColors.black,
              fontSize: 24,
              fontWeight: FontWeight.w800,
              fontFamily: 'InterE',
            ),
            legendOptions: const LegendOptions(showLegends: false),
            chartValuesOptions: const ChartValuesOptions(
              showChartValueBackground: false,
              showChartValues: false,
              showChartValuesInPercentage: false,
              showChartValuesOutside: false,
              decimalPlaces: 0,
            ),
          ),
          const SizedBox(height: 10),
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
