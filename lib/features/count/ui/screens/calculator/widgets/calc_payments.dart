import 'package:flutter/material.dart';

import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'calc_payment_chooseable.dart';

class CalcPayments extends StatelessWidget {
  const CalcPayments({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(AppLocalizations.of(context)!.paymentsType),
          ),
          CalculatorPaymentChooseable(
            isAnnuity: true,
            annuityIsSelected: true,
            onChanged: (_) => {},
          ),
          CalculatorPaymentChooseable(
            isAnnuity: false,
            annuityIsSelected: true,
            onChanged: (_) => {},
          ),
        ],
      ),
    );
  }
}
