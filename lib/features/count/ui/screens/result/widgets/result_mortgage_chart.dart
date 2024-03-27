
import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../../locale/locale.dart';

class MortgageChart extends StatelessWidget {
  final double loanAmount;
  final double interestAmount;
  final Color loanAmountColor;
  final Color interestAmountColor;

  const MortgageChart({
    super.key,
    required this.loanAmount,
    required this.interestAmount,
    required this.loanAmountColor,
    required this.interestAmountColor,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxHeight: 200,
          ),
          child: LayoutBuilder(
            builder: (context, constraints) {
              return PieChart(
                PieChartData(
                  startDegreeOffset: -90,
                  sections: List.generate(2, (i) {
                    return PieChartSectionData(
                      color: i == 0 ? interestAmountColor : loanAmountColor,
                      value: i == 0 ? interestAmount : loanAmount,
                      title: '',
                      radius:
                      min(constraints.maxHeight, constraints.maxWidth) / 2,
                    );
                  }),
                  centerSpaceRadius: 0,
                  sectionsSpace: 2.0,
                  pieTouchData: PieTouchData(
                    touchCallback: (FlTouchEvent event, pieTouchResponse) {},
                  ),
                  borderData: FlBorderData(
                    show: false,
                  ),
                ),
                swapAnimationDuration: const Duration(milliseconds: 150), // Optional
                swapAnimationCurve: Curves.linear, // Optional
              );
            },
          ),
        ),

        const SizedBox(height: 8),
        //agenda
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //ColoredBox
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: SizedBox.square(
                dimension: 16,
                child: ColoredBox(color: interestAmountColor),
              ),
            ),
            //Text
            const SizedBox(width: 8),
            Text(
              AppLocaleScope.of(context).interestAmountAgenda,
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ),
        const SizedBox(height: 4),
        Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            //ColoredBox
            ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: SizedBox.square(
                dimension: 16,
                child: ColoredBox(color: loanAmountColor),
              ),
            ),
            //Text
            const SizedBox(width: 8),
            Text(
              AppLocaleScope.of(context).loanAmountAgenda,
              style: Theme.of(context).textTheme.labelSmall,
            ),
          ],
        ),
      ],
    );
  }
}