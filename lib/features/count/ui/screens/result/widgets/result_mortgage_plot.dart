import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../../calculator/domain/model/calculator_dataclass.dart';
import '../../../../../locale/locale.dart';

class MortgagePlot extends StatelessWidget {
  final List<CalculatorResultData> data;
  final Color loanAmountColor;
  final Color interestAmountColor;

  const MortgagePlot(
    this.data, {
    super.key,
    required this.loanAmountColor,
    required this.interestAmountColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppLocaleScope.of(context).payoutChart,
          style: Theme.of(context).textTheme.titleMedium,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxHeight: 200,
            ),
            child: LayoutBuilder(
              builder: (context, constraints) {
                return BarChart(
                  BarChartData(
                    barGroups: List.generate(
                      data.length,
                      (i) => generateGroupData(
                        i,
                        principal: data[i].principal,
                        interest: data[i].interest,
                        width: (constraints.maxWidth - 60) / data.length,
                        betweenSpace:
                            data[0].payment / (0.3 * constraints.maxHeight),
                      ),
                    ),
                    //config
                    barTouchData: BarTouchData(enabled: false),
                    borderData: FlBorderData(show: false),
                    gridData: const FlGridData(show: false),
                    titlesData: const FlTitlesData(
                      leftTitles: AxisTitles(),
                      rightTitles: AxisTitles(),
                      topTitles: AxisTitles(),
                      bottomTitles: AxisTitles(
                        sideTitles: SideTitles(
                          showTitles: false,
                          // getTitlesWidget: bottomTitles,
                          // reservedSize: 20,
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  BarChartGroupData generateGroupData(
    int x, {
    required double principal,
    required double interest,
    required double width,
    required double betweenSpace,
  }) {
    return BarChartGroupData(
      x: x,
      groupVertically: true,
      barRods: [
        BarChartRodData(
          fromY: 0,
          toY: principal,
          color: loanAmountColor,
          width: width,
          borderRadius: BorderRadius.all(Radius.circular(width / 4)),
        ),
        BarChartRodData(
          fromY: principal + betweenSpace,
          toY: principal + betweenSpace + interest,
          color: interestAmountColor,
          width: width,
          borderRadius: BorderRadius.all(Radius.circular(width / 4)),
        ),
      ],
    );
  }
}
