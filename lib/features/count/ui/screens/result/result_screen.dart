import 'package:flutter/material.dart';
import 'package:sirius_mortgage/features/theme/model/theme_extensions.dart';

import '../../../../locale/locale.dart';
import '../../../domain/domain_models/output_model.dart';
import '../../../route/route.dart';
import 'widgets/result_mortgage_chart.dart';
import 'widgets/result_mortgage_plot.dart';
import 'widgets/result_mortgage_stat.dart';

class ResultPage extends StatelessWidget {
  const ResultPage(this.result, {super.key});

  final OutputDomainModel result;

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
                loanAmount: result.output.loanAmount,
                interestAmount: result.output.interestPayout,
                loanAmountColor:
                    Theme.of(context).extension<ThemeColors>()!.chartColorFirst,
                interestAmountColor: Theme.of(context)
                    .extension<ThemeColors>()!
                    .chartColorSecond,
              ),

              const SizedBox(height: 16),
              //summary
              MortgageSimpleStat(
                total: result.output.totalPayout,
                loanAmount: result.output.loanAmount,
                interestAmount: result.output.interestPayout,
              ),

              const SizedBox(height: 8),
              //chart2 -- like plot
              MortgagePlot(
                result.tableInfo,
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
                    Navigator.of(context)
                        .pushNamed(routeTable, arguments: result);
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
