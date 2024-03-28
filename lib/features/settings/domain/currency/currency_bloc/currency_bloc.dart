import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../utils/defaults.dart';
import '../../../utils/simple_response.dart';
import '../currency_enum.dart';
import '../currency_repository.dart';

part 'currency_event.dart';

part 'currency_state.dart';

part 'currency_bloc.freezed.dart';

class CurrencyBloc extends Bloc<CurrencyEvent, CurrencyState> {
  final CurrencyRepository _repository;

  CurrencyBloc(this._repository)
      : super(
          const CurrencyState(
            currency: CurrencyType.rub,
          ),
        ) {
    on<CurrencyEvent>((event, emit) {
      event.map(
        currencyChanged: (CurrencyChanged value) {
          _changeCurrency(value, emit);
        },
        needCurrencyLoad: (NeedCurrencyLoad value) {
          _loadCurrency(value, emit);
        },
        reload: (CurrencyReload value) {
          _reloadCurrency(value, emit);
        },
      );
    });
  }

  void _reloadCurrency(CurrencyReload event, Emitter emit) {
    event.response.map(
      ok: (response) {
        emit(CurrencyState(currency: response.payload));
      },
      error: (response) {
        emit(
          CurrencyState.error(
            currency: response.payload,
            errorMessage: response.message,
          ),
        );
      },
    );
  }

  void _changeCurrency(CurrencyChanged event, Emitter emit) {
    _repository.setCurrency(event.currency).then((result) {
      result.map(
        ok: (_) {
          add(
            CurrencyEvent.reload(
              SimpleResponse.ok(payload: event.currency),
            ),
          );
        },
        error: (response) {
          add(
            CurrencyEvent.reload(
              SimpleResponse.error(
                payload: state.currency,
                message: response.message,
              ),
            ),
          );
        },
      );
    });
  }

  void _loadCurrency(NeedCurrencyLoad event, Emitter emit) {
    _repository.getCurrency().then((result) {
      result.map(
        ok: (response) {
          add(
            CurrencyEvent.reload(
              SimpleResponse.ok(payload: response.payload),
            ),
          );
        },
        error: (response) {
          add(
            CurrencyEvent.reload(
              SimpleResponse.error(
                payload: CurrencyType
                    .values[SettingDefaults.selectedCurrencyDefault],
                message: response.message,
              ),
            ),
          );
        },
      );
    });
  }
}
