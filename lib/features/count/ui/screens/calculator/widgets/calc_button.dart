import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../domain/form_bloc/form_bloc.dart';
import '../../../../../locale/locale.dart';
import '../../../../route/route.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({super.key});

  @override
  Widget build(BuildContext context) {
    final isFormValid = context.watch<FormBloc>().state is ValidFormState;

    return SizedBox(
      width: double.maxFinite,
      height: 80.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: isFormValid
              ? () {
                  Navigator.of(context).pushNamed(routeResult);
                }
              : null,
          child: Text(AppLocaleScope.of(context).calculate),
        ),
      ),
    );
  }
}
