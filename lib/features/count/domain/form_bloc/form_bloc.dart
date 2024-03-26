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
            '',
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
      emit(
        ValidationFormState.notValid(
          model,
          'Введены не все данные',
        ),
      );
      return;
    }

    emit(ValidationFormState.valid(model));
  }

  void _costChangedEvent(CostChangedEvent event, Emitter emit) {
    if (event.cost.isNotEmpty) {
      final value = int.tryParse(event.cost);
      if (value == null || value <= 0) {
        emit(
          ValidationFormState.notValid(
            state.model,
            'Некорректная стоимость имущества',
          ),
        );
        return;
      }
    } else {
      emit(
        ValidationFormState.notValid(
          state.model,
          '',
        ),
      );
    }

    final model = state.model.copyWith(cost: event.cost);
    fullyFilledCheck(model, emit);
  }

  void _contributionChangedEvent(ContributionChangedEvent event, Emitter emit) {
    final cost =
        state.model.cost != null ? int.tryParse(state.model.cost!) : null;

    if (event.contribution.isNotEmpty) {
      final value = int.tryParse(event.contribution);
      if (value == null ||
          value <= 0 ||
          cost != null && cost <= value ||
          cost == null) {
        emit(
          ValidationFormState.notValid(
            state.model,
            'Некорректный первоначальный взнос',
          ),
        );
        return;
      }
    } else {
      emit(
        ValidationFormState.notValid(
          state.model,
          '',
        ),
      );
    }

    final model = state.model.copyWith(contribution: event.contribution);
    fullyFilledCheck(model, emit);
  }

  void _termChangedEvent(TermChangedEvent event, Emitter emit) {
    if (event.term.isNotEmpty) {
      final value = int.tryParse(event.term);
      if (value == null || value <= 0) {
        emit(
          ValidationFormState.notValid(
            state.model,
            'Некорректный срок',
          ),
        );
        return;
      }
    } else {
      emit(
        ValidationFormState.notValid(
          state.model,
          '',
        ),
      );
    }
    final model = state.model.copyWith(term: event.term);
    fullyFilledCheck(model, emit);
  }

  void _betChangedEvent(BetChangedEvent event, Emitter emit) {
    if (event.bet.isNotEmpty) {
      final value = int.tryParse(event.bet);
      if (value == null || value <= 0) {
        emit(
          ValidationFormState.notValid(
            state.model,
            'Некорректная ставка',
          ),
        );
        return;
      }
    } else {
      emit(
        ValidationFormState.notValid(
          state.model,
          '',
        ),
      );
    }
    final model = state.model.copyWith(bet: event.bet);
    fullyFilledCheck(model, emit);
  }

  void _annuityPaymentTypeChangeEvent(
      AnnuityPaymentTypeChangeEvent event, Emitter emit,) {
    final model =
        state.model.copyWith(isAnnuityPaymentType: event.isAnnuityPaymentType);
    fullyFilledCheck(model, emit);
  }
}
