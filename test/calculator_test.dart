import 'package:sirius_mortgage/features/calculator/domain/model/calculator_inteface.dart';
import 'package:sirius_mortgage/features/calculator/domain/mortgage_calculator.dart';
import 'package:test/test.dart';
import 'package:sirius_mortgage/features/calculator/domain/model/calculator_dataclass.dart';

void main() {
  late final ICalculator calculator;

  setUpAll(() {
    calculator = const MortgageCalculator();
  });

  /// Tests for calculateDifferentiatedPayment method
  test('Differentiated calculations method [Test-1]', () {
    final input = CalculatorInputData(
      loanAmount: 100000,
      initialPayment: 0,
      loanTermYears: 2,
      interestRate: 4.5,
      date: DateTime(2024, 02, 23),
    );
    const index = 1;

    final response = calculator.calculateDifferentiatedPayment(input, index);

    final output = CalculatorResultData(
      date: DateTime(2024, 03, 23),
      payment: 4541.67,
      principal: 4166.67,
      interest: 375.00,
      residue: 95833.33,
    );

    expect(output, equals(response));
  });

  test('Differentiated calculations method [Test-2]', () {
    final input = CalculatorInputData(
      loanAmount: 120000,
      initialPayment: 20000,
      loanTermYears: 1,
      interestRate: 15,
      date: DateTime(2024, 02, 23),
    );
    const index = 1;

    final response = calculator.calculateDifferentiatedPayment(input, index);

    final output = CalculatorResultData(
      date: DateTime(2024, 03, 23),
      payment: 9583.33,
      principal: 8333.33,
      interest: 1250.00,
      residue: 91666.67,
    );

    expect(output, equals(response));
  });
  test('Differentiated calculations method [Test-3]', () {
    final input = CalculatorInputData(
      loanAmount: 120000,
      initialPayment: 20000,
      loanTermYears: 1,
      interestRate: 15,
      date: DateTime(2024, 02, 23),
    );
    const index = 2;

    final response = calculator.calculateDifferentiatedPayment(input, index);

    final output = CalculatorResultData(
      date: DateTime(2024, 04, 23),
      payment: 9479.17,
      principal: 8333.33,
      interest: 1145.83,
      residue: 83333.33,
    );

    expect(output, equals(response));
  });
  test('Differentiated calculations method [Test-4]', () {
    final input = CalculatorInputData(
      loanAmount: 120000,
      initialPayment: 20000,
      loanTermYears: 1,
      interestRate: 15,
      date: DateTime(2024, 01, 1),
    );
    const index = 12;

    final response = calculator.calculateDifferentiatedPayment(input, index);

    final output = CalculatorResultData(
      date: DateTime(2025, 01, 1),
      payment: 8437.50,
      principal: 8333.33,
      interest: 104.17,
      residue: 0.00,
    );

    expect(output, equals(response));
  });

  test('Differentiated calculations method [Test-5]', () {
    final input = CalculatorInputData(
      loanAmount: 120000,
      initialPayment: 0,
      loanTermYears: 1,
      interestRate: 15,
      date: DateTime(2024, 01, 1),
    );
    const index = 0;

    final response = calculator.calculateDifferentiatedPayment(input, index);

    final output = CalculatorResultData(
      date: DateTime(2024, 01, 1),
      payment: 0,
      principal: 0,
      interest: 0,
      residue: 120000,
    );

    expect(output, equals(response));
  });
  test('Differentiated calculations method [Test-6]', () {
    final input = CalculatorInputData(
      loanAmount: 120000,
      initialPayment: 10000,
      loanTermYears: 5,
      interestRate: 15,
      date: DateTime(2024, 01, 1),
    );
    const index = 57;

    final response = calculator.calculateDifferentiatedPayment(input, index);

    final output = CalculatorResultData(
      date: DateTime(2028, 10, 1),
      payment: 1925.00,
      principal: 1833.33,
      interest: 91.67,
      residue: 5500.00,
    );

    expect(output, equals(response));
  });

  /// Tests for calculateAnnuityPayment method
  test('Annuity calculations method [test-1].', () {
    final input = CalculatorInputData(
      loanAmount: 90000,
      initialPayment: 0,
      loanTermYears: 2,
      interestRate: 15,
      date: DateTime(2024, 1, 1),
    );
    const index = 0;

    final response = calculator.calculateAnnuityPayment(input, index);

    final output = CalculatorResultData(
      date: DateTime(2024, 1, 1),
      payment: 0,
      principal: 0,
      interest: 0,
      residue: 90000,
    );

    expect(output, equals(response));
  });
  test('Annuity calculations method [test-2].', () {
    final input = CalculatorInputData(
      loanAmount: 90000,
      initialPayment: 0,
      loanTermYears: 2,
      interestRate: 15,
      date: DateTime(2024, 1, 1),
    );
    const index = 1;

    final response = calculator.calculateAnnuityPayment(input, index);

    final output = CalculatorResultData(
      date: DateTime(2024, 2, 1),
      payment: 4363.80,
      principal: 3238.80,
      interest: 1125.00,
      residue: 86761.20,
    );

    expect(output, equals(response));
  });
  test('Annuity calculations method [test-3].', () {
    final input = CalculatorInputData(
      loanAmount: 90000,
      initialPayment: 0,
      loanTermYears: 2,
      interestRate: 15,
      date: DateTime(2024, 1, 1),
    );
    const index = 3;

    final response = calculator.calculateAnnuityPayment(input, index);

    final output = CalculatorResultData(
      date: DateTime(2024, 4, 1),
      payment: 4363.80,
      principal: 3320.27,
      interest: 1043.52,
      residue: 80161.64,
    );

    expect(output, equals(response));
  });
  test('Annuity calculations method [test-4].', () {
    final input = CalculatorInputData(
      loanAmount: 30000000,
      initialPayment: 1000000,
      loanTermYears: 10,
      interestRate: 15,
      date: DateTime(2024, 1, 1),
    );
    const index = 1;

    final response = calculator.calculateAnnuityPayment(input, index);

    final output = CalculatorResultData(
      date: DateTime(2024, 2, 1),
      payment: 467871.38,
      principal: 105371.38,
      interest: 362500.00,
      residue: 28894628.62,
    );

    expect(output, equals(response));
  });
  test('Annuity calculations method [test-5].', () {
    final input = CalculatorInputData(
      loanAmount: 30000000,
      initialPayment: 1000000,
      loanTermYears: 10,
      interestRate: 15,
      date: DateTime(2024, 1, 1),
    );
    const index = 120;

    final response = calculator.calculateAnnuityPayment(input, index);

    final output = CalculatorResultData(
      date: DateTime(2034, 1, 1),
      payment: 467871.38,
      principal: 462095.19,
      interest: 5776.19,
      residue: -0.0,
    );

    expect(output, equals(response));
  });

  /// Tests for summaryInformation method
  test('Summary information method [test-1].', () {
    final input = CalculatorInputData(
      loanAmount: 100000,
      initialPayment: 0,
      loanTermYears: 1,
      interestRate: 15,
      date: DateTime(2024, 1, 1),
    );

    final response = calculator.summaryInformation(
      input,
      CalculateType.annuity,
    );

    const output = CalculatorSummaryInformation(
      totalPayout: 108309.97,
      loanAmount: 100000,
      interestPayout: 8309.97,
    );

    expect(output, equals(response));
  });
  test('Summary information method [test-2].', () {
    final input = CalculatorInputData(
      loanAmount: 100000,
      initialPayment: 0,
      loanTermYears: 1,
      interestRate: 15,
      date: DateTime(2024, 1, 1),
    );

    final response =
        calculator.summaryInformation(input, CalculateType.differentiated);

    const output = CalculatorSummaryInformation(
      totalPayout: 108125.00,
      loanAmount: 100000,
      interestPayout: 8125.00,
    );

    expect(output, equals(response));
  });
  test('Summary information method [test-3].', () {
    final input = CalculatorInputData(
      loanAmount: 100000,
      initialPayment: 20000,
      loanTermYears: 3,
      interestRate: 4,
      date: DateTime(2024, 1, 1),
    );

    final response = calculator.summaryInformation(
      input,
      CalculateType.annuity,
    );

    const output = CalculatorSummaryInformation(
      totalPayout: 85029.08,
      loanAmount: 80000,
      interestPayout: 5029.08,
    );

    expect(output, equals(response));
  });
  test('Summary information method [test-4].', () {
    final input = CalculatorInputData(
      loanAmount: 1000000,
      initialPayment: 0,
      loanTermYears: 7,
      interestRate: 15,
      date: DateTime(2024, 1, 1),
    );

    final response = calculator.summaryInformation(
      input,
      CalculateType.differentiated,
    );

    const output = CalculatorSummaryInformation(
      totalPayout: 1531250.00,
      loanAmount: 1000000,
      interestPayout: 531250.00,
    );

    expect(output, equals(response));
  });
  test('Summary information method [test-5].', () {
    final input = CalculatorInputData(
      loanAmount: 1000000,
      initialPayment: 0,
      loanTermYears: 1,
      interestRate: 15,
      date: DateTime(2024, 1, 1),
    );

    final response = calculator.summaryInformation(
      input,
      CalculateType.annuity,
    );

    const output = CalculatorSummaryInformation(
      totalPayout: 1083099.75,
      loanAmount: 1000000,
      interestPayout: 83099.75,
    );

    expect(output, equals(response));
  });
  test('Summary information method [test-6].', () {
    final input = CalculatorInputData(
      loanAmount: 566678,
      initialPayment: 0,
      loanTermYears: 2,
      interestRate: 40,
      date: DateTime(2024, 1, 1),
    );

    final response = calculator.summaryInformation(
      input,
      CalculateType.differentiated,
    );

    const output = CalculatorSummaryInformation(
      totalPayout: 802793.83,
      loanAmount: 566678,
      interestPayout: 236115.83,
    );

    expect(output, equals(response));
  });
}
