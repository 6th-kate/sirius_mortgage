import 'dart:math';

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
                double betweenSpace = data[1].payment / (0.3 * constraints.maxHeight);
                double minBarHeight = min(
                  data[data.length - 1].interest * constraints.maxHeight / (data[1].principal + betweenSpace + data[1].interest),
                  data[1].principal *
                      constraints.maxHeight / (data[1].principal + betweenSpace + data[1].interest),
                );
                double width = (constraints.maxWidth - 60) / data.length;
                betweenSpace = width > minBarHeight * 1.5 ? min(betweenSpace, minBarHeight,) : betweenSpace;
                double radius = min(
                  min(
                    data[data.length - 1].interest * constraints.maxHeight / (data[1].principal + betweenSpace + data[1].interest),
                    data[1].principal *
                        constraints.maxHeight / (data[1].principal + betweenSpace + data[1].interest),
                  ),
                  width,
                ) / 4;
                return BarChart(
                    BarChartData(
                      barGroups: List.generate(
                        data.length - 1,
                        (i) => generateGroupData(
                          i,
                          principal: data[i + 1].principal,
                          interest: data[i + 1].interest,
                          width: width,
                          radius: radius,
                          betweenSpace: betweenSpace,
                        ),
                      ),
                      //config
                      maxY: data[1].payment +
                          data[1].payment / (0.3 * constraints.maxHeight),
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
    required double radius,
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
          borderRadius: BorderRadius.all(
            Radius.circular(radius),
          ),
        ),
        BarChartRodData(
          fromY: principal + betweenSpace,
          toY: principal + betweenSpace + interest,
          color: interestAmountColor,
          width: width,
          borderRadius: BorderRadius.all(
            Radius.circular(radius),
          ),
        ),
      ],
    );
  }
}
