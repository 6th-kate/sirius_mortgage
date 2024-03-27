import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:sirius_mortgage/features/calculator/domain/model/calculator_dataclass.dart';
import 'package:sirius_mortgage/features/calculator/domain/model/calculator_inteface.dart';
import 'package:sirius_mortgage/features/count/domain/count_repository.dart';
import 'package:sirius_mortgage/features/count/domain/domain_models/input_model.dart';
import 'package:sirius_mortgage/features/count/domain/domain_models/output_model.dart';

import '../model/form_model.dart';

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
    emit(ErrorCalculatorState(event.input, event.message));
  }

  void _startCalculationEvent(
    StartCalculationEvent event,
    Emitter emit,
  ) {
    InputDomainModel inputModel = InputDomainModel(
      input: SummaryInformationInput(
        data: CalculatorInputData(
          loanAmount: double.parse(event.model.cost!),
          loanTermYears: int.parse(event.model.term!),
          interestRate: double.parse(event.model.bet!),
          date: DateTime.now(),
          initialPayment: double.parse(event.model.contribution!),
        ),
        type: event.model.isAnnuityPaymentType
            ? CalculateType.annuity
            : CalculateType.annuity,
      ),
    );

    emit(InProcessCalculatorState(inputModel));

    _repository.calculate(inputModel).then((output) {
      add(ReloadCalculationEvent(inputModel, output));
    }).catchError((err) {
      add(ErrorCalculationEvent(inputModel, err.toString()));
    });
  }
}
