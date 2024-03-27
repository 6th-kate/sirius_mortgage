import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:sirius_mortgage/features/count/domain/form_bloc/form_bloc.dart';
import 'package:sirius_mortgage/features/count/ui/screens/calculator/widgets/calc_button.dart';
import 'package:sirius_mortgage/features/count/ui/screens/calculator/widgets/calc_form.dart';
import 'package:sirius_mortgage/features/theme/model/theme_constants.dart';

import '../../../../locale/locale.dart';

class CalculatorFormPage extends StatelessWidget {
  const CalculatorFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FormBloc(),
      child: Scaffold(
        appBar: AppBar(
          title: Text(AppLocaleScope.of(context).calculateMortgage),
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: max(
                      660,
                      constraints
                          .maxHeight,), //660 = heightForm+heightButton идеологически должно быть, но тут с запасом
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
                    const CalculateButton(),
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
