import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../route/route.dart';

final _navigatorKey = GlobalKey<NavigatorState>();

void showCalculatorBottomSheet(BuildContext context) {
  showCupertinoModalBottomSheet(
    context: context,
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: Navigator(
          key: _navigatorKey,
          initialRoute: routeCalc,
          onGenerateRoute: (settings) => onGenerateRoute(context, settings),
        ),
      );
    },
  );
}
