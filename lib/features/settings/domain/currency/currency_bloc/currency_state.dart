part of 'currency_bloc.dart';

@freezed
class CurrencyState with _$CurrencyState {
  const factory CurrencyState({
    required CurrencyType currency,
  }) = _CurrencyState;

  const factory CurrencyState.error({
    required CurrencyType currency,
    required String errorMessage,
  }) = _CurrencyErrorState;
}
