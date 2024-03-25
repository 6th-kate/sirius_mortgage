import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sirius_mortgage/features/theme/model/theme_constants.dart';

import '../../../../../../core/gen/l10n/app_localizations.g.dart';
import '../../../../domain/form_bloc/form_bloc.dart';
import '../../../../../locale/locale.dart';
import '../../../../domain/form_bloc/form_bloc.dart';
import '../../../../route/route.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({super.key});

  @override
  Widget build(BuildContext context) {
    final formBloc = context.read<FormBloc>();
    final isFormValid = context.watch<FormBloc>().state is ValidFormState;

    return SizedBox(
      width: double.maxFinite,
      height: 80.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          style: !isFormValid
              ? ElevatedButton.styleFrom(
                  backgroundColor: AppColors.focus.withOpacity(0.2),
                )
              : null,
          onPressed: isFormValid
              ? () {
                  Navigator.of(context).pushNamed(routeResult);
                }
              : null,
          child: Text(AppLocalizations.of(context)!.calculate),
        ),
      ),
    );
  }
}
