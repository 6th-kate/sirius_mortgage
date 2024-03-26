import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

import '../model/form_model.dart';

part 'form_event.dart';
part 'form_state.dart';

class FormBloc extends Bloc<FormEvent, ValidationFormState> {
  FormBloc()
      : super(
          ValidationFormState.notValid(
            FormModel(),
            'Заполните все поля',
            true,
          ),
        ) {
    on<FormEvent>(
      (event, emit) => switch (event) {
        CostChangedEvent() => _costChangedEvent(event, emit),
        ContributionChangedEvent() => _contributionChangedEvent(event, emit),
        TermChangedEvent() => _termChangedEvent(event, emit),
        BetChangedEvent() => _betChangedEvent(event, emit),
        AnnuityPaymentTypeChangeEvent() =>
          _annuityPaymentTypeChangeEvent(event, emit),
      },
    );
  }

  void fullyFilledCheck(FormModel model, Emitter emit) {
    final isFilled = model.isFullyFilled;

    if (!isFilled) {
      emit(ValidationFormState.notValid(
        model,
        'Введены не все данные',
        false,
      ));
      return;
    }

    emit(ValidationFormState.valid(model));
  }

  void _costChangedEvent(CostChangedEvent event, Emitter emit) {
    final value = int.tryParse(event.cost);
    if (value == null || value <= 0) {
      emit(
        ValidationFormState.notValid(
          state.model,
          'Некорректные стоимость недвижимости',
          false,
        ),
      );
      return;
    }
    final model = state.model.copyWith(cost: event.cost);
    fullyFilledCheck(model, emit);
  }

  void _contributionChangedEvent(ContributionChangedEvent event, Emitter emit) {
    final value = int.tryParse(event.contribution);
    if (value == null || value <= 0) {
      emit(ValidationFormState.notValid(
        state.model,
        'Некорректный первоначальный взнос',
        false,
      ));
      return;
    }
    final model = state.model.copyWith(contribution: event.contribution);
    fullyFilledCheck(model, emit);
  }

  void _termChangedEvent(TermChangedEvent event, Emitter emit) {
    final value = int.tryParse(event.term);
    if (value == null || value <= 0) {
      emit(ValidationFormState.notValid(
        state.model,
        'Некорректные срок',
        false,
      ));
      return;
    }
    final model = state.model.copyWith(term: event.term);
    fullyFilledCheck(model, emit);
  }

  void _betChangedEvent(BetChangedEvent event, Emitter emit) {
    final value = int.tryParse(event.bet);
    if (value == null || value <= 0 || value > 100) {
      emit(ValidationFormState.notValid(
        state.model,
        'Некорректная ставка',
        false,
      ));
      return;
    }
    final model = state.model.copyWith(bet: event.bet);
    fullyFilledCheck(model, emit);
  }

  void _annuityPaymentTypeChangeEvent(
      AnnuityPaymentTypeChangeEvent event, Emitter emit) {
    final model =
        state.model.copyWith(isAnnuityPaymentType: event.isAnnuityPaymentType);
    fullyFilledCheck(model, emit);
  }
}
