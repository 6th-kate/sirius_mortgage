import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sirius_mortgage/features/count/domain/form_bloc/textfield_type_to_event.dart';
import 'package:sirius_mortgage/features/count/ui/screens/calculator/widgets/calc_text_field.dart';
import 'calc_payments.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'calc_suffix_button.dart';

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
            label: AppLocalizations.of(context)!.loanAmount,
            placeholder: '0Р',
            suffix: SuffixButton(
              text: AppLocalizations.of(context)!.currency,
              onPressed: () {},
            ),
            textFieldType: TextFieldType.cost,
          ),
          CalculatorTextField(
            controller: TextEditingController(),
            label: AppLocalizations.of(context)!.downpayment,
            placeholder: '0Р',
            textFieldType: TextFieldType.contribution,
          ),
          Row(
            children: [
              Expanded(
                child: CalculatorTextField(
                  controller: TextEditingController(),
                  label: AppLocalizations.of(context)!.loanTerm,
                  placeholder: '0',
                  textFieldType: TextFieldType.term,
                ),
              ),
              const SizedBox(width: 8.0),
              Expanded(
                child: CalculatorTextField(
                  controller: TextEditingController(),
                  label: AppLocalizations.of(context)!.rate,
                  placeholder: '0Р',
                  textFieldType: TextFieldType.bet,
                ),
              ),
            ],
          ),
          const CalcPayments(),
        ],
      ),
    );
  }
}
