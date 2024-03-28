import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sirius_mortgage/features/count/domain/form_bloc/textfield_type_to_event.dart';
import 'package:sirius_mortgage/features/count/ui/screens/calculator/widgets/calc_text_field.dart';
import '../../../../../locale/locale.dart';
import '../../../../../settings/domain/currency/currency_enum.dart';
import '../../../../domain/form_bloc/form_bloc.dart';
import 'calc_payments.dart';

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
            label: AppLocaleScope.of(context).loanAmount,
            placeholder: '0',
            suffix: SuffixButton(
              text: context.watch<FormBloc>().state.model.currency.currencyName,
              onPressed: () {
                onCurrencySheetOpen(context);
              },
            ),
            textFieldType: TextFieldType.cost,
          ),
          CalculatorTextField(
            label: AppLocaleScope.of(context).downpayment,
            placeholder: '0',
            textFieldType: TextFieldType.contribution,
          ),
          Row(
            children: [
              Expanded(
                child: CalculatorTextField(
                  placeholder: '0',
                  textFieldType: TextFieldType.term,
                  label: AppLocaleScope.of(context).loanTerm,
                ),
              ),
              const SizedBox(width: 8.0),
              Expanded(
                child: CalculatorTextField(
                  label: AppLocaleScope.of(context).rate,
                  placeholder: '0%',
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

  void onCurrencySheetOpen(BuildContext context1) {
    showCupertinoModalBottomSheet(
      context: context1,
      expand: false,
      builder: (context) {
        return SafeArea(
          child: SizedBox(
            height: CurrencyType.values.length * 50,
            child: Scaffold(
              body: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: CurrencyType.values
                    .map(
                      (currency) => SizedBox(
                        height: 50,
                        child: TextButton(
                          onPressed: () {
                            BlocProvider.of<FormBloc>(context1).add(
                              CurrencyChangedEvent(currency),
                            );
                            Navigator.of(context).pop();
                          },
                          child: Text(currency.currencyName),
                        ),
                      ),
                    )
                    .toList(),
              ),
            ),
          ),
        );
      },
    );
  }
}
