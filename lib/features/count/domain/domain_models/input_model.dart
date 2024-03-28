import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sirius_mortgage/features/calculator/domain/model/calculator_dataclass.dart';

import '../../../settings/domain/currency/currency_enum.dart';

part 'input_model.freezed.dart';

@freezed
class InputDomainModel with _$InputDomainModel {
  const factory InputDomainModel({
    required SummaryInformationInput input,
    required CurrencyType currency,
  }) = _InputDomainModel;
}
