import 'package:sirius_mortgage/features/calculator/domain/model/calculator_dataclass.dart';
import 'package:sirius_mortgage/features/calculator/domain/model/calculator_inteface.dart';
import 'package:sirius_mortgage/features/count/domain/count_repository.dart';
import 'package:sirius_mortgage/features/count/domain/domain_models/input_model.dart';
import 'package:sirius_mortgage/features/count/domain/domain_models/output_model.dart';

class CountRepositoryImpl implements CountRepository {
  final ICalculator calculator;

  const CountRepositoryImpl(this.calculator);

  @override
  Future<OutputDomainModel> calculate(InputDomainModel input) async {
    CalculatorSummaryInformation summary =
        await calculator.summaryInformation(input.input.data, input.input.type);
    List<CalculatorResultData> tableInfo =
        input.input.type == CalculateType.annuity
            ? await calculator.annuityPayments(input.input.data)
            : await calculator.differentiatedPayments(input.input.data);
    return OutputDomainModel(input:input.input, output: summary, tableInfo: tableInfo);
  }
}
