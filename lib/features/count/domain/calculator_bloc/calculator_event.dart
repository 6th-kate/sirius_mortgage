part of 'calculator_bloc.dart';

@immutable
sealed class CalculatorEvent {
  const CalculatorEvent();
}

class StartCalculationEvent extends CalculatorEvent {
  const StartCalculationEvent(this.model);

  final FormModel model;
}

class ReloadCalculationEvent extends CalculatorEvent {
  const ReloadCalculationEvent(
    this.input,
    this.output,
  );

  final InputDomainModel input;
  final OutputDomainModel output;
}

class ErrorCalculationEvent extends CalculatorEvent {
  const ErrorCalculationEvent(this.input, this.message);

  final InputDomainModel input;
  final String message;
}
