import 'dart:math';
import 'package:sirius_mortgage/features/calculator/domain/model/calculator_inteface.dart';
import '../utils/utils_calculator.dart';
import 'model/calculator_dataclass.dart';
import 'dart:async';
import 'package:flutter/foundation.dart';

class MortgageCalculator implements ICalculator {
  const MortgageCalculator();
  
  List<CalculatorResultData> _calculateDifferentiatedPayments(
    CalculatorInputData data,
  ) {
    List<CalculatorResultData> response = [];
    for (int index = 0; index <= data.loanTermYears * 12; index++) {
      response.add(calculateDifferentiatedPayment(data, index));
    }
    return response;
  }

  List<CalculatorResultData> _calculateAnnuityPayments(
    CalculatorInputData data,
  ) {
    List<CalculatorResultData> response = [];
    for (int index = 0; index <= data.loanTermYears * 12; index++) {
      response.add(calculateAnnuityPayment(data, index));
    }
    return response;
  }

  @override
  Future<List<CalculatorResultData>> differentiatedPayments(
    CalculatorInputData data,
  ) async {
    return compute(_calculateDifferentiatedPayments, data);
  }

  @override
  Future<List<CalculatorResultData>> annuityPayments(
    CalculatorInputData data,
  ) async {
    return compute(_calculateAnnuityPayments, data);
  }

  @override
  CalculatorResultData calculateDifferentiatedPayment(
    CalculatorInputData data,
    int index,
  ) {
    final (years, month) = UtilsCalculator.calculateYearsAndMonths(index);
    final date = DateTime(
      data.date.year + years,
      data.date.month + month,
      data.date.day,
    );
    if (index == 0) {
      final response = CalculatorResultData(
        date: date,
        payment: 0,
        principal: 0,
        interest: 0,
        residue: data.loanAmount - data.initialPayment,
      );
      return response;
    }
    // Количество месяцев кредита
    final loanTermMonths = data.loanTermYears * 12;

    if (index > loanTermMonths || index.isNegative) {
      throw Exception('Index [$index] is out of range 0 - [$loanTermMonths]');
    }

    final monthlyInterestRate = (data.interestRate / 100) / 12;
    double loanAmount = data.loanAmount - data.initialPayment;

    double loanResidue =
        loanAmount - (loanAmount / loanTermMonths) * (index - 1);

    //Расчёт платежа по основному долгу
    double principalPayment = loanAmount / loanTermMonths;

    // Расчёт месячного процента по кредиту
    double interestPayment = loanResidue * monthlyInterestRate;

    // Итоговая месячная выплата
    double totalMonthPayment = principalPayment + interestPayment;

    loanResidue = loanResidue - principalPayment;

    final response = CalculatorResultData(
      date: date,
      payment: UtilsCalculator.round(totalMonthPayment),
      principal: UtilsCalculator.round(principalPayment),
      interest: UtilsCalculator.round(interestPayment),
      residue: UtilsCalculator.round(loanResidue),
    );
    return response;
  }

  @override
  CalculatorResultData calculateAnnuityPayment(
    CalculatorInputData data,
    index,
  ) {
    double loanTermMonths =
        data.loanTermYears * 12; // Количество месяцев кредита

    if (index > loanTermMonths || index < 0) {
      throw Exception('Index is out of range');
    }

    final (years, month) = UtilsCalculator.calculateYearsAndMonths(index);
    final date = DateTime(
      data.date.year + years,
      data.date.month + month,
      data.date.day,
    );

    if (index == 0) {
      CalculatorResultData response = CalculatorResultData(
        date: date,
        payment: 0,
        principal: 0,
        interest: 0,
        residue: data.loanAmount - data.initialPayment,
      );
      return response;
    }

    double loanAmount = data.loanAmount - data.initialPayment;

    double monthlyInterestRate = data.interestRate / 100 / 12;

    double annuityCoefficient = monthlyInterestRate *
        pow(1 + monthlyInterestRate, loanTermMonths) /
        (pow(1 + monthlyInterestRate, loanTermMonths) - 1);

    double totalMonthPayment = loanAmount * annuityCoefficient;

    double principalPayment = 0;
    double interestPayment = 0;

    double loanResidue = loanAmount;
    for (int i = 0; i < index; i++) {
      interestPayment = loanResidue * monthlyInterestRate;
      principalPayment = totalMonthPayment - interestPayment;
      loanResidue = loanResidue - principalPayment;
    }

    CalculatorResultData response = CalculatorResultData(
      date: date,
      payment: UtilsCalculator.round(totalMonthPayment),
      principal: UtilsCalculator.round(principalPayment),
      interest: UtilsCalculator.round(interestPayment),
      residue: UtilsCalculator.round(loanResidue),
    );

    return response;
  }

  @override
  CalculatorSummaryInformation summaryInformation(
    CalculatorInputData data,
    CalculateType type,
  ) {
    final loanAmount = data.loanAmount - data.initialPayment;
    double totalPayout = 0;
    double interestPayout = 0;

    // Количество месяцев кредита
    final loanTermMonths = data.loanTermYears * 12;
    final monthlyInterestRate = (data.interestRate / 100) / 12;

    double loanResidue = loanAmount;

    switch (type) {
      case CalculateType.annuity:
        {
          double principalPayment = 0;
          double interestPayment = 0;

          double annuityCoefficient = monthlyInterestRate *
              pow(1 + monthlyInterestRate, loanTermMonths) /
              (pow(1 + monthlyInterestRate, loanTermMonths) - 1);

          double totalMonthPayment = loanAmount * annuityCoefficient;

          for (int index = 1; index <= loanTermMonths; index++) {
            interestPayment = loanResidue * monthlyInterestRate;
            interestPayout += loanResidue * monthlyInterestRate;
            principalPayment = totalMonthPayment - interestPayment;
            loanResidue = loanResidue - principalPayment;
          }
          totalPayout = loanAmount + interestPayout;
        }
      case CalculateType.differentiated:
        {
          //Расчёт платежа по основному долгу
          double principalPayment = loanAmount / loanTermMonths;

          for (int index = 1; index <= loanTermMonths; index++) {
            loanResidue = loanAmount - principalPayment * (index - 1);
            interestPayout += loanResidue * monthlyInterestRate;
          }
          totalPayout = loanAmount + interestPayout;
        }
      default:
        throw Exception('Wrong name for method.');
    }

    CalculatorSummaryInformation response = CalculatorSummaryInformation(
      totalPayout: UtilsCalculator.round(totalPayout),
      loanAmount: UtilsCalculator.round(loanAmount),
      interestPayout: UtilsCalculator.round(interestPayout),
    );
    return response;
  }
}
