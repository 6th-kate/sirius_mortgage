import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sirius_mortgage/features/count/domain/calculator_bloc/calculator_bloc.dart';
import 'package:sirius_mortgage/features/count/domain/form_bloc/form_bloc.dart';
import 'package:sirius_mortgage/features/count/ui/screens/calculator/widgets/calc_form.dart';
import 'package:sirius_mortgage/features/settings/domain/currency/currency_bloc/currency_bloc.dart';
import 'package:sirius_mortgage/features/theme/model/theme_constants.dart';

import '../../../../../core/di/di.dart';
import '../../../../locale/locale.dart';

class CalculatorFormPage extends StatelessWidget {
  final Widget button;

  const CalculatorFormPage({required this.button, super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FormBloc(
            initCurrency: context.read<CurrencyBloc>().state.currency,
          ),
        ),
        BlocProvider(
          create: (context) => getIt<CalculatorBloc>(),
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.close),
            onPressed: () {
              Navigator.of(context, rootNavigator: true).pop();
            },
          ),
          title: Text(AppLocaleScope.of(context).calculateMortgage),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: max(
                    660,
                    constraints.maxHeight,
                  ), //660 = heightForm+heightButton идеологически должно быть, но тут с запасом
                ),
                child: Column(
                  children: [
                    const CalculatorForm(),
                    const Spacer(),
                    BlocBuilder<FormBloc, ValidationFormState>(
                      builder: (context, state) {
                        if (state is NotValidFormState) {
                          return Text(
                            state.errorMessage,
                            style: const TextStyle(color: AppColors.error),
                          );
                        }
                        return const SizedBox.shrink();
                      },
                    ),
                    button,
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
