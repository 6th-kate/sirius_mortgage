part of 'form_bloc.dart';

@immutable
sealed class FormState {
  abstract final FormModel model;

  const factory FormState.valid(FormModel model) = ValidFormState;

  const factory FormState.notValid(
    FormModel model,
    String errorMessage,
  ) = NotValidFormState;
}

class ValidFormState implements FormState {
  @override
  final FormModel model;

  const ValidFormState(this.model);
}

class NotValidFormState implements FormState {
  final String errorMessage;

  @override
  final FormModel model;

  const NotValidFormState(this.model, this.errorMessage);
}
