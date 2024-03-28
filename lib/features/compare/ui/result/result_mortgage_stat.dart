import 'package:flutter/material.dart';

import '../../../locale/widget/app_locale_scope.dart';

class MortgageCompareStat extends StatelessWidget {
  final double totalFirst;
  final double loanAmountFirst;
  final double interestAmountFirst;
  final double totalSecond;
  final double loanAmountSecond;
  final double interestAmountSecond;

  const MortgageCompareStat({
    super.key,
    required this.totalFirst,
    required this.loanAmountFirst,
    required this.interestAmountFirst,
    required this.totalSecond,
    required this.loanAmountSecond,
    required this.interestAmountSecond,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              AppLocaleScope.of(context).totalPayoutResult,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Row(
              children: [
                Expanded(
                  child: Text.rich(
                    TextSpan(
                      text: AppLocaleScope.of(context).compareResultFirst,
                      style: Theme.of(context).textTheme.titleMedium,
                      children: <TextSpan>[
                        TextSpan(
                          text: totalFirst.toStringAsFixed(2),
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Text.rich(
                    TextSpan(
                      text: AppLocaleScope.of(context).compareResultSecond,
                      style: Theme.of(context).textTheme.titleMedium,
                      children: <TextSpan>[
                        TextSpan(
                          text: totalSecond.toStringAsFixed(2),
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        //
        const SizedBox(
          height: 16,
        ),
        //second
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              AppLocaleScope.of(context).loanAmountResult,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Row(
              children: [
                Expanded(
                  child: Text.rich(
                    TextSpan(
                      text: AppLocaleScope.of(context).compareResultFirst,
                      style: Theme.of(context).textTheme.titleMedium,
                      children: <TextSpan>[
                        TextSpan(
                          text: loanAmountFirst.toStringAsFixed(2),
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Text.rich(
                    TextSpan(
                      text: AppLocaleScope.of(context).compareResultSecond,
                      style: Theme.of(context).textTheme.titleMedium,
                      children: <TextSpan>[
                        TextSpan(
                          text: loanAmountSecond.toStringAsFixed(2),
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        //
        const SizedBox(
          height: 16,
        ),
        //third
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              AppLocaleScope.of(context).interestAmountResult,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            Row(
              children: [
                Expanded(
                  child: Text.rich(
                    TextSpan(
                      text: AppLocaleScope.of(context).compareResultFirst,
                      style: Theme.of(context).textTheme.titleMedium,
                      children: <TextSpan>[
                        TextSpan(
                          text: interestAmountFirst.toStringAsFixed(2),
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Text.rich(
                    TextSpan(
                      text: AppLocaleScope.of(context).compareResultSecond,
                      style: Theme.of(context).textTheme.titleMedium,
                      children: <TextSpan>[
                        TextSpan(
                          text: interestAmountSecond.toStringAsFixed(2),
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}