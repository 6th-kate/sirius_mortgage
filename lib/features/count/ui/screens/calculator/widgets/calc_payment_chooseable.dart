import 'package:flutter/material.dart';

import '../../../../../locale/locale.dart';

class CalculatorPaymentChooseable extends StatelessWidget {
  final bool isAnnuity;
  final bool annuityIsSelected;
  final void Function(bool?) onChanged;

  const CalculatorPaymentChooseable({
    super.key,
    required this.isAnnuity,
    required this.annuityIsSelected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Radio<bool>(
          value: isAnnuity,
          groupValue: annuityIsSelected,
          onChanged: onChanged,
        ),
        Text(
          isAnnuity
              ? AppLocaleScope.of(context).annuity
              : AppLocaleScope.of(context).differentiated,
        ),
      ],
    );
  }
}
