import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';

import '../domain_models/form_model.dart';

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
    final isFullyParsed = model.isFullyParsed;

    if (!isFilled) {
      emit(
        ValidationFormState.notValid(
          model,
          'Введены не все данные',
        ),
      );
      return;
    }
    if (!isFullyParsed) {
      emit(
        ValidationFormState.notValid(
          model,
          'Не все данные корректны',
        ),
      );
      return;
    }

    emit(ValidationFormState.valid(model));
  }

  void _costChangedEvent(CostChangedEvent event, Emitter emit) {
    final model = state.model.copyWith(cost: event.cost);
    if (event.cost.isNotEmpty) {
      final value = int.tryParse(event.cost);
      if (value == null || value <= 0) {
        emit(
          ValidationFormState.notValid(
            model,
            'Некорректная стоимость имущества',
          ),
        );
        return;
      }
    } else {
      emit(
        ValidationFormState.notValid(
          model,
          '',
        ),
      );
    }

    fullyFilledCheck(model, emit);
  }

  void _contributionChangedEvent(ContributionChangedEvent event, Emitter emit) {
    final cost =
        state.model.cost != null ? int.tryParse(state.model.cost!) : null;

    final model = state.model.copyWith(contribution: event.contribution);
    if (event.contribution.isNotEmpty) {
      final value = int.tryParse(event.contribution);
      if (value == null ||
          value <= 0 ||
          cost != null && cost <= value ||
          cost == null) {
        emit(
          ValidationFormState.notValid(
            model,
            'Некорректный первоначальный взнос',
          ),
        );
        return;
      }
    } else {
      emit(
        ValidationFormState.notValid(
          model,
          '',
        ),
      );
    }

    fullyFilledCheck(model, emit);
  }

  void _termChangedEvent(TermChangedEvent event, Emitter emit) {
    final model = state.model.copyWith(term: event.term);
    if (event.term.isNotEmpty) {
      final value = int.tryParse(event.term);
      if (value == null || value <= 0) {
        emit(
          ValidationFormState.notValid(
            model,
            'Некорректный срок',
          ),
        );
        return;
      }
    } else {
      emit(
        ValidationFormState.notValid(
          model,
          '',
        ),
      );
    }
    fullyFilledCheck(model, emit);
  }

  void _betChangedEvent(BetChangedEvent event, Emitter emit) {
    final model = state.model.copyWith(bet: event.bet);
    if (event.bet.isNotEmpty) {
      final value = double.tryParse(event.bet);
      if (value == null || value <= 0) {
        emit(
          ValidationFormState.notValid(
            model,
            'Некорректная ставка',
          ),
        );
        return;
      }
    } else {
      emit(
        ValidationFormState.notValid(
          model,
          '',
        ),
      );
    }
    fullyFilledCheck(model, emit);
  }

  void _annuityPaymentTypeChangeEvent(
    AnnuityPaymentTypeChangeEvent event,
    Emitter emit,
  ) {
    final model =
        state.model.copyWith(isAnnuityPaymentType: event.isAnnuityPaymentType);
    fullyFilledCheck(model, emit);
  }
}
