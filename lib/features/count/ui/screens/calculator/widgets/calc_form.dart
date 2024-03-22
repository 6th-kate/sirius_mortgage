import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sirius_mortgage/features/count/ui/screens/calculator/widgets/calc_text_field.dart';

import 'calc_payment_chooseable.dart';

class CalculatorForm extends StatelessWidget {
  const CalculatorForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          CalculatorTextField(
            controller: TextEditingController(),
            label: 'Надпись',
            placeholder: "0Р",
          ),
          CalculatorTextField(
            controller: TextEditingController(),
            label: 'Надпись',
            placeholder: "0Р",
          ),
          Row(
            children: [
              Expanded(
                child: CalculatorTextField(
                  controller: TextEditingController(),
                  label: 'Надпись',
                  placeholder: "0Р",
                ),
              ),
              const SizedBox(width: 8.0),
              Expanded(
                child: CalculatorTextField(
                  controller: TextEditingController(),
                  label: 'Надпись',
                  placeholder: "0Р",
                ),
              ),
            ],
          ),
          CalcPayments()
        ],
      ),
    );
  }
}
