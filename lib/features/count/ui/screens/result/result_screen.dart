import 'package:flutter/material.dart';
import 'package:sirius_mortgage/features/theme/model/theme_extensions.dart';

import '../../../../calculator/domain/model/calculator_dataclass.dart';
import '../../../../locale/locale.dart';
import '../../../route/route.dart';
import 'widgets/result_mortgage_chart.dart';
import 'widgets/result_mortgage_plot.dart';
import 'widgets/result_mortgage_stat.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(this.result, this.table, {super.key});

  final CalculatorSummaryInformation result;
  final List<CalculatorResultData> table;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocaleScope.of(context).result),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.star_border_outlined),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //chart
              MortgageChart(
                loanAmount: result.loanAmount,
                interestAmount: result.interestPayout,
                loanAmountColor:
                    Theme.of(context).extension<ThemeColors>()!.chartColorFirst,
                interestAmountColor: Theme.of(context)
                    .extension<ThemeColors>()!
                    .chartColorSecond,
              ),

              const SizedBox(height: 16),
              //summary
              MortgageSimpleStat(
                total: result.totalPayout,
                loanAmount: result.loanAmount,
                interestAmount: result.interestPayout,
              ),

              const SizedBox(height: 8),
              //chart2 -- like plot
              MortgagePlot(
                table,
                loanAmountColor:
                    Theme.of(context).extension<ThemeColors>()!.chartColorFirst,
                interestAmountColor: Theme.of(context)
                    .extension<ThemeColors>()!
                    .chartColorSecond,
              ),
              //get table text button
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(routeTable);
                  },
                  child: Text(AppLocaleScope.of(context).openTable),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
