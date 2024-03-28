import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:sirius_mortgage/features/settings/domain/currency/currency_bloc/currency_bloc.dart';
import 'package:sirius_mortgage/features/settings/domain/currency/currency_enum.dart';
import 'package:sirius_mortgage/features/settings/ui/widgets/setting_template.dart';

import '../../../locale/widget/app_locale_scope.dart';

class CurrencySetting extends StatelessWidget {
  const CurrencySetting({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingTemplate(
      title: AppLocaleScope.of(context).currency,
      suffixChild: FilledButton(
        onPressed: () {
          onCurrencySheetOpen(context);
        },
        child: Text(context.watch<CurrencyBloc>().state.currency.currencyName),
      ),
    );
  }

  void onCurrencySheetOpen(BuildContext context) {
    showCupertinoModalBottomSheet(
      context: context,
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
                            BlocProvider.of<CurrencyBloc>(context).add(
                              CurrencyEvent.currencyChanged(currency),
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
