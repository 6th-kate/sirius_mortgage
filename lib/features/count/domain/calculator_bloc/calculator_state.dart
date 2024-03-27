part of 'calculator_bloc.dart';

@immutable
sealed class CalculatorState {
  const factory CalculatorState.idle() = IdleCalculatorState;

  const factory CalculatorState.inProcess(InputDomainModel model) =
      InProcessCalculatorState;

  const factory CalculatorState.success(
          InputDomainModel model, OutputDomainModel outputModel) =
      SuccessCalculatorState;

  const factory CalculatorState.error(
    InputDomainModel model,
    String errorMessage,
  ) = ErrorCalculatorState;
}

final class IdleCalculatorState implements CalculatorState {
  const IdleCalculatorState();
}

final class InProcessCalculatorState implements CalculatorState {
  final InputDomainModel inputModel;

  const InProcessCalculatorState(this.inputModel);
}

final class SuccessCalculatorState implements CalculatorState {
  final OutputDomainModel outputModel;
  final InputDomainModel inputModel;

  const SuccessCalculatorState(this.inputModel, this.outputModel);
}

final class ErrorCalculatorState implements CalculatorState {
  final String errorMessage;
  final InputDomainModel inputModel;

  const ErrorCalculatorState(this.inputModel, this.errorMessage);
}
