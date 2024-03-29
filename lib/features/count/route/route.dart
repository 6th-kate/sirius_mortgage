import 'package:flutter/material.dart';
import 'package:sirius_mortgage/features/count/domain/domain_models/output_model.dart';

import '../ui/screens/calculator/calc_form_sheet.dart';
import '../ui/screens/calculator/widgets/calc_button.dart';
import '../ui/screens/result/result_screen.dart';
import '../ui/screens/table/table_screen.dart';

const routeCalc = '/';
const routeResult = '/result';
const routeTable = '/table';

Route onGenerateRoute(BuildContext context, RouteSettings settings) {
  late Widget page;
  switch (settings.name) {
    case routeCalc:
      page = const CalculatorFormPage(
        button: CalculateButton(),
      );
      break;
    case routeResult:
      final output = settings.arguments as OutputDomainModel;
      page = ResultPage(output);
      break;
    case routeTable:
      final output = settings.arguments as OutputDomainModel;
      page = TablePage(output.tableInfo, currencySymbol: output.currency.shortSymbol);
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
