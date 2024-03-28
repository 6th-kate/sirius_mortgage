import 'package:flutter/material.dart';

import '../../../locale/locale.dart';

class CompareButton extends StatelessWidget {
  const CompareButton({super.key});

  @override
  Widget build(BuildContext context) {
//    final isFormValid = context.watch<FormBloc>().state is ValidFormState;

    return //BlocListener<CalculatorBloc, CalculatorState>(
      //listenWhen: (context, state) => state is SuccessCalculatorState,
      //listener: (context, state) {
        //if (state is SuccessCalculatorState) {
          //Navigator.of(context)
            //  .pushNamed(routeResult, arguments: state.outputModel);
        //}
      //},
      //child:
      SizedBox(
        width: double.maxFinite,
        height: 80.0,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ElevatedButton(
            onPressed: () {},
              //onPressed: isFormValid
            //    ? () {
            //  context.read<CalculatorBloc>().add(
            //    StartCalculationEvent(
            //      context.read<FormBloc>().state.model,
            //    ),
            //  );
            //}
            //    : null,
            child: Text(
              true //context.watch<CalculatorBloc>().state is InProcessCalculatorState
                  ? AppLocaleScope.of(context).loading
                  : AppLocaleScope.of(context).compare,
            ),
          ),
        ),
      //),
    );
  }
}
