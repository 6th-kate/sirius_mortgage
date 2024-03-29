part of 'currency_bloc.dart';

@freezed
class CurrencyEvent with _$CurrencyEvent {
  factory CurrencyEvent.currencyChanged(CurrencyType currency) =
      CurrencyChanged;

  factory CurrencyEvent.reload(SimpleResponse<CurrencyType> response) =
      CurrencyReload;
}
