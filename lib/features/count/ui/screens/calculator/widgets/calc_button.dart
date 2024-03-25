import 'package:flutter/material.dart';

import '../../../../../locale/locale.dart';
import '../../../../route/route.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 80.0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(
          onPressed: () => {
            Navigator.of(context).pushNamed(routeResult),
          },
          child: Text(AppLocaleScope.of(context).calculate),
        ),
      ),
    );
  }
}
