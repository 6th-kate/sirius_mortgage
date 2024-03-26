import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:sirius_mortgage/features/count/ui/screens/calculator/widgets/calc_button.dart';
import 'package:sirius_mortgage/features/count/ui/screens/calculator/widgets/calc_form.dart';

import '../../../../locale/locale.dart';

class CalculatorFormPage extends StatelessWidget {
  const CalculatorFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocaleScope.of(context).calculateMortgage),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: max(660, constraints.maxHeight), //660 = heightForm+heightButton идеологически должно быть, но тут с запасом
              ),
              child: const Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CalculatorForm(),
                  Spacer(),
                  CalculateButton(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
