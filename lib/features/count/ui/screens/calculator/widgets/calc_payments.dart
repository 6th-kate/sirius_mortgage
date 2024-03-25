import 'package:flutter/material.dart';

import '../../../../../locale/locale.dart';
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
            child: Text(AppLocaleScope.of(context).paymentsType),
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
