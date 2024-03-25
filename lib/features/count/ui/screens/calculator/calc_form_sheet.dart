import 'package:flutter/material.dart';
import 'package:sirius_mortgage/features/count/domain/form_bloc/form_bloc.dart';
import 'package:sirius_mortgage/features/count/ui/screens/calculator/widgets/calc_button.dart';
import 'package:sirius_mortgage/features/count/ui/screens/calculator/widgets/calc_form.dart';
import 'package:sirius_mortgage/features/theme/model/theme_constants.dart';

import '../../../../locale/locale.dart';

class CalculatorFormPage extends StatefulWidget {
  const CalculatorFormPage({super.key});

  @override
  State<CalculatorFormPage> createState() => _CalculatorFormPageState();
}

class _CalculatorFormPageState extends State<CalculatorFormPage> {
  final formBloc = FormBloc();

  @override
  void dispose() {
    super.dispose();
    formBloc.close();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => formBloc,
      child: Scaffold(
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height - 43,
            ),
            child: Column(
              children: [
                Text(AppLocaleScope.of(context).calculateMortgage),
                const CalculatorForm(),
                const Spacer(),
                BlocBuilder<FormBloc, ValidationFormState>(
                    builder: (context, state) {
                  if (state is NotValidFormState && !state.isInit) {
                    return Text(
                      state.errorMessage,
                      style: const TextStyle(color: AppColors.error),
                    );
                  }
                  return const SizedBox.shrink();
                }),
                const CalculateButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
