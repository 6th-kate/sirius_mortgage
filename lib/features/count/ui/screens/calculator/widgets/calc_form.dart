import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sirius_mortgage/features/count/domain/form_bloc/textfield_type_to_event.dart';
import 'package:sirius_mortgage/features/count/ui/screens/calculator/widgets/calc_text_field.dart';
import '../../../../../locale/locale.dart';

import 'calc_suffix_button.dart';

class CalculatorForm extends StatelessWidget {

  const CalculatorForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CalculatorTextField(
            controller: TextEditingController(),
            label: AppLocaleScope.of(context).loanAmount,
            placeholder: '0Р',
            suffix: SuffixButton(
              text: AppLocaleScope.of(context).currency,
              onPressed: () {},
            ),
            textFieldType: TextFieldType.cost,
          ),
          CalculatorTextField(
            controller: TextEditingController(),
            label: AppLocaleScope.of(context).downpayment,
            placeholder: '0Р',
            textFieldType: TextFieldType.contribution,
          ),
          Row(
            children: [
              Expanded(
                child: CalculatorTextField(
                  controller: TextEditingController(),
                  placeholder: '0',
                  textFieldType: TextFieldType.term,
                  label: AppLocaleScope.of(context).loanTerm,
                ),
              ),
              const SizedBox(width: 8.0),
              Expanded(
                child: CalculatorTextField(
                  controller: TextEditingController(),
                  label: AppLocaleScope.of(context).rate,
                  placeholder: '0%',
                  textFieldType: TextFieldType.bet,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
