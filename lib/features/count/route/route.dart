import 'package:flutter/material.dart';

import '../ui/screens/calculator/calc_form_sheet.dart';

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
      page = const Placeholder();
      break;
    case routeTable:
      page = const Placeholder();
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
