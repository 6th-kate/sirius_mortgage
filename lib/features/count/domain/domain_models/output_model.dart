import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../calculator/domain/model/calculator_dataclass.dart';
import '../../../settings/domain/currency/currency_enum.dart';

part 'output_model.freezed.dart';

@freezed
class OutputDomainModel with _$OutputDomainModel {
  const factory OutputDomainModel({
    required CurrencyType currency,
    required SummaryInformationInput input,
    required CalculatorSummaryInformation output,
    required List<CalculatorResultData> tableInfo,
  }) = _OutputDomainModel;
}
