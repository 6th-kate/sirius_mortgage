import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../locale/locale.dart';
import '../../../../domain/calculator_bloc/calculator_bloc.dart';
import '../../../../domain/form_bloc/form_bloc.dart';
import '../../../../route/route.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({super.key});

  @override
  Widget build(BuildContext context) {
    final isFormValid = context.watch<FormBloc>().state is ValidFormState;

    return BlocListener<CalculatorBloc, CalculatorState>(
      listenWhen: (context, state) => state is SuccessCalculatorState,
      listener: (context, state) {
        if (state is SuccessCalculatorState) {
          Navigator.of(context)
              .pushNamed(routeResult, arguments: state.outputModel);
        }
      },
      child: SizedBox(
        width: double.maxFinite,
        height: 80.0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            onPressed: isFormValid
                ? () {
                    context.read<CalculatorBloc>().add(
                          StartCalculationEvent(
                            context.read<FormBloc>().state.model,
                          ),
                        );
                  }
                : null,
            child: Text(context.watch<CalculatorBloc>().state
                    is InProcessCalculatorState
                ? 'Загружаем...'
                : AppLocaleScope.of(context).calculate),
          ),
        ),
      ),
    );
  }
}
