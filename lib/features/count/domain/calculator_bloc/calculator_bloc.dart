import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sirius_mortgage/features/calculator/domain/model/calculator_dataclass.dart';
import 'package:sirius_mortgage/features/calculator/domain/model/calculator_inteface.dart';
import 'package:sirius_mortgage/features/count/domain/count_repository.dart';
import 'package:sirius_mortgage/features/count/domain/domain_models/input_model.dart';
import 'package:sirius_mortgage/features/count/domain/domain_models/output_model.dart';

import '../domain_models/form_model.dart';

part 'calculator_event.dart';

part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  final CountRepository _repository;

  CalculatorBloc(this._repository) : super(const IdleCalculatorState()) {
    on<CalculatorEvent>(
      (event, emit) => switch (event) {
        StartCalculationEvent() => _startCalculationEvent(event, emit),
        ReloadCalculationEvent() => _reloadSuccessCalculation(event, emit),
        ErrorCalculationEvent() => _errorSuccessCalculation(event, emit),
      },
    );
  }

  void _reloadSuccessCalculation(ReloadCalculationEvent event, Emitter emit) {
    emit(SuccessCalculatorState(event.input, event.output));
  }

  void _errorSuccessCalculation(ErrorCalculationEvent event, Emitter emit) {
    emit(ErrorCalculatorState(event.message));
  }

  void _startCalculationEvent(
    StartCalculationEvent event,
    Emitter emit,
  ) {
    if (state is InProcessCalculatorState) {
      return;
    }
    final loanAmount = double.tryParse(event.model.cost!);
    final loanTermMonths = int.tryParse(event.model.term!);
    final interestRate = double.tryParse(event.model.bet!);
    final date = DateTime.now();
    final initialPayment = double.tryParse(event.model.contribution!);
    if (loanAmount == null ||
        loanTermMonths == null ||
        interestRate == null ||
        initialPayment == null) {
      add(const ErrorCalculationEvent('Incorrect data'));
      return;
    }

    InputDomainModel inputModel = InputDomainModel(
      currency: event.model.currency,
      input: SummaryInformationInput(
        data: CalculatorInputData(
          currency: event.model.currency,
          loanAmount: loanAmount,
          loanTermMonth: loanTermMonths,
          interestRate: interestRate,
          date: date,
          initialPayment: initialPayment,
        ),
        type: event.model.isAnnuityPaymentType
            ? CalculateType.annuity
            : CalculateType.differentiated,
      ),
    );

    emit(InProcessCalculatorState(inputModel));

    _repository.calculate(inputModel).then((output) {
      add(ReloadCalculationEvent(inputModel, output));
    }).catchError((err) {
      add(ErrorCalculationEvent(err.toString()));
    });
  }
}
