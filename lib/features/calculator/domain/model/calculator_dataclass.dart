import 'package:sirius_mortgage/features/calculator/domain/model/calculator_inteface.dart';

class CalculatorInputData {
  /// Кредит
  final double loanAmount;

  ///Срок в месяцах
  final int loanTermMonth;

  /// Процентная ставка
  final double interestRate;

  /// Дата взятия ипотеки
  final DateTime date;

  /// Начальная выплата
  final double initialPayment;

  const CalculatorInputData({
    required this.loanAmount,
    required this.loanTermMonth,
    required this.interestRate,
    required this.date,
    required this.initialPayment,
  });
  // Convert CalculatorInputData instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'loanAmount': loanAmount,
      'loanTermMonth': loanTermMonth,
      'interestRate': interestRate,
      'date': date.toIso8601String(),
      'initialPayment': initialPayment,
    };
  }

  // Create CalculatorInputData instance from JSON
  factory CalculatorInputData.fromJson(Map<String, dynamic> json) {
    return CalculatorInputData(
      loanAmount: json['loanAmount'],
      loanTermMonth: json['loanTermMonth'],
      interestRate: json['interestRate'],
      date: DateTime.parse(json['date']),
      initialPayment: json['initialPayment'],
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CalculatorInputData &&
          runtimeType == other.runtimeType &&
          loanAmount == other.loanAmount &&
          loanTermMonth == other.loanTermMonth &&
          interestRate == other.interestRate &&
          date == other.date &&
          initialPayment == other.initialPayment;

  @override
  int get hashCode =>
      loanAmount.hashCode ^
      loanTermMonth.hashCode ^
      interestRate.hashCode ^
      date.hashCode ^
      initialPayment.hashCode;
}

class SummaryInformationInput {
  final CalculatorInputData data;

  final CalculateType type;

  const SummaryInformationInput({required this.data, required this.type});

  // Convert SummaryInformationInput instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'data': data.toJson(),
      'type': type.toString(),
    };
  }

  // Create SummaryInformationInput instance from JSON
  factory SummaryInformationInput.fromJson(Map<String, dynamic> json) {
    return SummaryInformationInput(
      data: CalculatorInputData.fromJson(json['data']),
      type: json['type'] == CalculateType.annuity.toString()
          ? CalculateType.annuity
          : CalculateType.differentiated,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SummaryInformationInput &&
          runtimeType == other.runtimeType &&
          data == other.data &&
          type == other.type;

  @override
  int get hashCode => data.hashCode ^ type.hashCode;
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

  // Convert CalculatorResultData instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'date': date.toIso8601String(),
      'payment': payment,
      'principal': principal,
      'interest': interest,
      'residue': residue,
    };
  }

  // Create CalculatorResultData instance from JSON
  factory CalculatorResultData.fromJson(Map<String, dynamic> json) {
    return CalculatorResultData(
      date: DateTime.parse(json['date']),
      payment: json['payment'],
      principal: json['principal'],
      interest: json['interest'],
      residue: json['residue'],
    );
  }

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

  // Convert CalculatorSummaryInformation instance to JSON
  Map<String, dynamic> toJson() {
    return {
      'totalPayout': totalPayout,
      'loanAmount': loanAmount,
      'interestPayout': interestPayout,
    };
  }

  // Create CalculatorSummaryInformation instance from JSON
  factory CalculatorSummaryInformation.fromJson(Map<String, dynamic> json) {
    return CalculatorSummaryInformation(
      totalPayout: json['totalPayout'],
      loanAmount: json['loanAmount'],
      interestPayout: json['interestPayout'],
    );
  }

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
