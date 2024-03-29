import 'package:flutter/material.dart';

import '../../../../../locale/locale.dart';

class MortgageSimpleStat extends StatelessWidget {
  final double total;
  final double loanAmount;
  final double interestAmount;
  final String currencySymbol;

  const MortgageSimpleStat({
    super.key,
    required this.total,
    required this.loanAmount,
    required this.interestAmount,
    required this.currencySymbol,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text.rich(
          TextSpan(
            text: AppLocaleScope.of(context).totalPayoutResult,
            style: Theme.of(context).textTheme.titleMedium,
            children: <TextSpan>[
              TextSpan(
                text: '${total.toStringAsFixed(2)} $currencySymbol',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        Text.rich(
          TextSpan(
            text: AppLocaleScope.of(context).loanAmountResult,
            style: Theme.of(context).textTheme.titleMedium,
            children: <TextSpan>[
              TextSpan(
                text: '${loanAmount.toStringAsFixed(2)} $currencySymbol',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
        Text.rich(
          TextSpan(
            text: AppLocaleScope.of(context).interestAmountResult,
            style: Theme.of(context).textTheme.titleMedium,
            children: <TextSpan>[
              TextSpan(
                text: '${interestAmount.toStringAsFixed(2)} $currencySymbol',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
