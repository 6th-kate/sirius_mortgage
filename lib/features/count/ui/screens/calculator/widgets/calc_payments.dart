import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sirius_mortgage/features/count/domain/form_bloc/form_bloc.dart';

import '../../../../../locale/locale.dart';
import 'calc_payment_chooseable.dart';

class CalcPayments extends StatelessWidget {
  const CalcPayments({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Text(AppLocaleScope.of(context).paymentsType),
          ),
          CalculatorPaymentChooseable(
            isAnnuity: true,
            annuityIsSelected:
                context.watch<FormBloc>().state.model.isAnnuityPaymentType,
            onChanged: (value) {
              if (value != null) {
                BlocProvider.of<FormBloc>(context)
                    .add(AnnuityPaymentTypeChangeEvent(value));
              }
            },
          ),
          CalculatorPaymentChooseable(
            isAnnuity: false,
            annuityIsSelected:
                context.watch<FormBloc>().state.model.isAnnuityPaymentType,
            onChanged: (value) {
              if (value != null) {
                BlocProvider.of<FormBloc>(context)
                    .add(AnnuityPaymentTypeChangeEvent(value));
              }
            },
          ),
        ],
      ),
    );
  }
}
