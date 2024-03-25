class CalculatorInputData {
  /// Кредит
  final double loanAmount;

  ///Срок в годах
  final int loanTermYears;

  /// Процентная ставка
  final double interestRate;

  /// Дата взятия ипотеки
  final DateTime date;

  /// Начальная выплата
  final double initialPayment;

  const CalculatorInputData({
    required this.loanAmount,
    required this.loanTermYears,
    required this.interestRate,
    required this.date,
    required this.initialPayment,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CalculatorInputData &&
          runtimeType == other.runtimeType &&
          loanAmount == other.loanAmount &&
          loanTermYears == other.loanTermYears &&
          interestRate == other.interestRate &&
          date == other.date &&
          initialPayment == other.initialPayment;

  @override
  int get hashCode =>
      loanAmount.hashCode ^
      loanTermYears.hashCode ^
      interestRate.hashCode ^
      date.hashCode ^
      initialPayment.hashCode;
}

class CalculatorResultData {
  /// Месяц
  final DateTime date;

  /// Сумма платежа
  final double payment;

  /// Платеж по основному долгу
  final double principal;

  /// Платеж по процентам
  final double interest;

  /// Остаток долга
  final double residue;

  const CalculatorResultData({
    required this.date,
    required this.payment,
    required this.principal,
    required this.interest,
    required this.residue,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CalculatorResultData &&
          runtimeType == other.runtimeType &&
          date == other.date &&
          payment == other.payment &&
          principal == other.principal &&
          interest == other.interest &&
          residue == other.residue;

  @override
  int get hashCode =>
      date.hashCode ^
      payment.hashCode ^
      principal.hashCode ^
      interest.hashCode ^
      residue.hashCode;
}

class CalculatorSummaryInformation {
  /// Общая выплата
  final double totalPayout;

  /// Сумма кредита
  final double loanAmount;

  /// Сумма по процентам
  final double interestPayout;

  const CalculatorSummaryInformation({
    required this.totalPayout,
    required this.loanAmount,
    required this.interestPayout,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CalculatorSummaryInformation &&
          runtimeType == other.runtimeType &&
          totalPayout == other.totalPayout &&
          loanAmount == other.loanAmount &&
          interestPayout == other.interestPayout;

  @override
  int get hashCode =>
      totalPayout.hashCode ^ loanAmount.hashCode ^ interestPayout.hashCode;
}