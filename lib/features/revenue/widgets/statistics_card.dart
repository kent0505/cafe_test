import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:pie_chart/pie_chart.dart';

import '../../../core/config/app_colors.dart';
import '../../../core/models/chart_data.dart';
import '../../../core/widgets/texts/text_e.dart';

class StatisticsCard extends StatefulWidget {
  const StatisticsCard({super.key, required this.chartData});

  final ChartData chartData;

  @override
  State<StatisticsCard> createState() => _StatisticsCardState();
}

class _StatisticsCardState extends State<StatisticsCard> {
  Map<String, double> dataMap = {};

  @override
  void initState() {
    super.initState();
    dataMap = {
      "Sugar": widget.chartData.sugar,
      "Coffee Cups": widget.chartData.cups,
      "Coffee": widget.chartData.coffee,
      "Dessert": widget.chartData.dessert,
      "Syrup for Coffee": widget.chartData.syrup
    };
  }

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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              _Period(
                title: 'Day',
                active: true,
                onPressed: () {},
              ),
              _Period(
                title: 'Week',
                active: false,
                onPressed: () {},
              ),
              _Period(
                title: 'Month',
                active: false,
                onPressed: () {},
              ),
              _Period(
                title: 'Year',
                active: false,
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset('assets/arrow1.svg'),
              const TextE2('August 2024', fontSize: 14),
              SvgPicture.asset('assets/arrow2.svg'),
            ],
          ),
          const SizedBox(height: 24),
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

class _Period extends StatelessWidget {
  const _Period({
    required this.title,
    required this.active,
    required this.onPressed,
  });

  final String title;
  final bool active;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      onPressed: active ? null : onPressed,
      child: TextE2(
        title,
        fontSize: 14,
        color: active ? AppColors.black : AppColors.grey1,
      ),
    );
  }
}
