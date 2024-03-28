import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirius_mortgage/features/settings/data/shared_prefs_service/keystore.dart';
import 'package:sirius_mortgage/features/settings/domain/currency/currency_enum.dart';

import '../domain/currency/currency_repository.dart';
import '../utils/simple_response.dart';

class CurrencyRepositoryImpl implements CurrencyRepository {
  @override
  Future<SimpleResponse<CurrencyType>> getCurrency() async {
    final sharedPrefs = await SharedPreferences.getInstance();

    final result = sharedPrefs.getInt(KeyStore.selectedCurrency);

    return result == null
        ? SimpleResponse.error(
            message: 'Not found theme on preferences',
            payload: CurrencyType.values[KeyStore.selectedCurrencyDefault],
          )
        : SimpleResponse.ok(
            payload: CurrencyType.values[result],
          );
  }

  @override
  Future<SimpleResponse<CurrencyType>> setCurrency(
    CurrencyType currency,
  ) async {
    final sharedPrefs = await SharedPreferences.getInstance();

    final result =
        await sharedPrefs.setInt(KeyStore.selectedCurrency, currency.index);

    return result
        ? SimpleResponse.ok(
            payload: currency,
          )
        : const SimpleResponse.error(
            message: 'Currency not set',
            payload: null,
          );
  }
}
