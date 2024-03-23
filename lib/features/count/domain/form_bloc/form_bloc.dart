import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

import '../model/form_model.dart';

part 'form_event.dart';
part 'form_state.dart';

class FormBloc extends Bloc<FormEvent, FormState> {
  FormBloc() : super(const FormState.notValid(FormModel.empty())) {
    on<FormEvent>(
      (event, emit) => switch (event) {
        CostChangedEvent() => _costChangedEvent(event, emit),
        ContributionChangedEvent() => _contributionChangedEvent(event, emit),
        TermChangedEvent() => _termChangedEvent(event, emit),
        BetChangedEvent() => _betChangedEvent(event, emit),
        SuccessEvent() => _successEvent(event, emit),
        ErrorEvent() => _errorEvent(event, emit),
        AnnuityPaymentTypeChangeEvent() =>
          _annuityPaymentTypeChangeEvent(event, emit),
      },
    );
  }

  FormState stateFromModel(FormModel model) {
    // todo logic validation
    return FormState.notValid(model);
  }

  Future<void> _costChangedEvent(CostChangedEvent event, Emitter emit) async {
    final value = event.cost;
    final model = state.model.copyWith(cost: value);
    final next = stateFromModel(model);
    emit(next);
  }

  Future<void> _contributionChangedEvent(
      ContributionChangedEvent event, Emitter emit) async {
    //
  }

  Future<void> _termChangedEvent(TermChangedEvent event, Emitter emit) async {
    //
  }

  Future<void> _betChangedEvent(BetChangedEvent event, Emitter emit) async {
    //
  }

  Future<void> _annuityPaymentTypeChangeEvent(
      AnnuityPaymentTypeChangeEvent event, Emitter emit) async {
    //
  }

  Future<void> _successEvent(SuccessEvent event, Emitter emit) async {
    //
  }

  Future<void> _errorEvent(ErrorEvent event, Emitter emit) async {
    //
  }
}
