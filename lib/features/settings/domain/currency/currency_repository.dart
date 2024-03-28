import 'package:sirius_mortgage/features/settings/domain/currency/currency_enum.dart';
import 'package:sirius_mortgage/features/settings/utils/simple_response.dart';

abstract interface class CurrencyRepository {
  Future<SimpleResponse<CurrencyType>> setCurrency(CurrencyType currency);

  Future<SimpleResponse<CurrencyType>> getCurrency();
}
