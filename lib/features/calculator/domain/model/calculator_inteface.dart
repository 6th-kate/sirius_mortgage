import 'package:sirius_mortgage/features/calculator/domain/model/calculator_dataclass.dart';

enum CalculateType {
  annuity,
  differentiated,
}

abstract interface class ICalculator {
  /// Расчет единовременного платежа по дифференцированному методу.
  CalculatorResultData calculateDifferentiatedPayment(
    CalculatorInputData data,
    int index,
  );

  /// Расчет единовременного платежа по аннуитентному методу.
  CalculatorResultData calculateAnnuityPayment(
    CalculatorInputData data,
    int index,
  );

  /// Расчет всех выплат на заданном периоде по дифференцированному методу.
  Future<List<CalculatorResultData>> differentiatedPayments(
      CalculatorInputData data);

  /// Расчет всех выплат на заданном периоде по аннуитентному методу.
  Future<List<CalculatorResultData>> annuityPayments(CalculatorInputData data);

  /// Основная информация по методу выплаты. [Виджет с результатом].
  Future<CalculatorSummaryInformation> summaryInformation(
    CalculatorInputData data,
    CalculateType type,
  );
}
