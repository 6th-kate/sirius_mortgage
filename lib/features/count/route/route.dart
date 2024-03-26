import 'package:flutter/material.dart';

import '../../calculator/domain/model/calculator_dataclass.dart';
import '../ui/screens/calculator/calc_form_sheet.dart';
import '../ui/screens/result/result_screen.dart';
import '../ui/screens/table/table_screen.dart';

final List<CalculatorResultData> calcResData = List.generate(30 * 12, (i) =>
    CalculatorResultData(date: DateTime(2024),
        payment: 40000,
        principal: 10000,
        interest: 30000,
        residue: 7,),);

const routeCalc = '/';
const routeResult = '/result';
const routeTable = '/table';

Route onGenerateRoute(BuildContext context, RouteSettings settings) {
  late Widget page;
  switch (settings.name) {
    case routeCalc:
      page = const CalculatorFormPage();
      break;
    case routeResult:
      page = ResultPage(
          const CalculatorSummaryInformation(
              totalPayout: 3000000,
              loanAmount: 2000000,
              interestPayout: 1000000,), calcResData,); //TODO
      break;
    case routeTable:
      page = TablePage(calcResData);
      break;
    default:
      throw Exception('Unknown route: ${settings.name}');
  }

  return MaterialPageRoute<dynamic>(
    builder: (context) {
      return page;
    },
    settings: settings,
  );
}
