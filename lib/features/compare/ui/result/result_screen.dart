import 'package:flutter/material.dart';
import 'package:sirius_mortgage/features/theme/model/theme_extensions.dart';


import '../../../count/domain/domain_models/output_model.dart';
import '../../../locale/widget/app_locale_scope.dart';
import '../../../count/ui/screens/result/widgets/result_mortgage_chart.dart';
import '../../../count/ui/screens/result/widgets/result_mortgage_plot.dart';
import 'result_mortgage_stat.dart';


class ResultPage extends StatelessWidget {
  const ResultPage(this.result1, this.result2, {super.key});

  final OutputDomainModel result1;
  final OutputDomainModel result2;

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
              Row(
                children: [
                  Expanded(
                    child: MortgageChart(
                      loanAmount: result1.output.loanAmount,
                      interestAmount: result2.output.interestPayout,
                      loanAmountColor:
                          Theme.of(context).extension<ThemeColors>()!.chartColorFirst,
                      interestAmountColor: Theme.of(context)
                          .extension<ThemeColors>()!
                          .chartColorSecond,
                    ),
                  ),
                  Expanded(
                    child: MortgageChart(
                      loanAmount: result1.output.loanAmount,
                      interestAmount: result2.output.interestPayout,
                      loanAmountColor:
                      Theme.of(context).extension<ThemeColors>()!.chartColorFirst,
                      interestAmountColor: Theme.of(context)
                          .extension<ThemeColors>()!
                          .chartColorSecond,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              //summary
              MortgageCompareStat(
                totalFirst: result1.output.totalPayout,
                loanAmountFirst: result1.output.loanAmount,
                interestAmountFirst: result1.output.interestPayout,
                totalSecond: result2.output.totalPayout,
                loanAmountSecond: result2.output.loanAmount,
                interestAmountSecond: result2.output.interestPayout,
              ),

              const SizedBox(height: 8),
              //chart2 -- like plot
              MortgagePlot(
                result1.tableInfo,
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
                    //Navigator.of(context)
                    //    .pushNamed(routeTable, arguments: result1);
                  },
                  child: Text(AppLocaleScope.of(context).openTable),
                ),
              ),
              const SizedBox(height: 8),
              //chart2 -- like plot
              MortgagePlot(
                result2.tableInfo,
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
                    //Navigator.of(context)
                    //.pushNamed(routeTable, arguments: result2);
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
