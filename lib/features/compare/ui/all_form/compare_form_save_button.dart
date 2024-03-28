import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sirius_mortgage/features/count/domain/domain_models/output_model.dart';

import '../../../count/domain/calculator_bloc/calculator_bloc.dart';
import '../../../count/domain/form_bloc/form_bloc.dart';
import '../../../locale/widget/app_locale_scope.dart';
//TODO: update buttons like in last bug fixes

class CompareFormSaveButton extends StatelessWidget {
  final ValueNotifier<OutputDomainModel?> output;
  const CompareFormSaveButton({super.key, required this.output});

  @override
  Widget build(BuildContext context) {
    final isFormValid = context.watch<FormBloc>().state is ValidFormState;

    return BlocListener<CalculatorBloc, CalculatorState>(
      listenWhen: (context, state) => state is SuccessCalculatorState,
      listener: (context, state) {
        if (state is SuccessCalculatorState) {
          output.value = state.outputModel;
          Navigator.of(context).pop();
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
            child: Text(
              context.watch<CalculatorBloc>().state is InProcessCalculatorState
                  ? AppLocaleScope.of(context).loading
                  : AppLocaleScope.of(context).save,
            ),
          ),
        ),
      ),
    );
  }
}
