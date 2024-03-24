part of 'form_bloc.dart';

@immutable
sealed class ValidationFormState {
  abstract final FormModel model;

  const factory ValidationFormState.valid(FormModel model) = ValidFormState;

  const factory ValidationFormState.notValid(
    FormModel model,
    String errorMessage,
    bool isInit,
  ) = NotValidFormState;
}

class ValidFormState implements ValidationFormState {
  @override
  final FormModel model;

  const ValidFormState(this.model);
}

class NotValidFormState implements ValidationFormState {
  final String errorMessage;
  final bool isInit;

  @override
  final FormModel model;

  const NotValidFormState(this.model, this.errorMessage, this.isInit);
}
