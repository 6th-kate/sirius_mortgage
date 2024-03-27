part of 'calculator_bloc.dart';

@immutable
sealed class CalculatorEvent {
  const CalculatorEvent();
}

class StartCalculationEvent extends CalculatorEvent {
  const StartCalculationEvent(this.model);

  final FormModel model;
}
