import 'package:flutter/material.dart';
import 'package:sirius_mortgage/features/count/ui/screens/calculator/widgets/calc_button.dart';
import 'package:sirius_mortgage/features/count/ui/screens/calculator/widgets/calc_form.dart';

import '../../../../locale/locale.dart';

class CalculatorFormPage extends StatelessWidget {
  const CalculatorFormPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: ConstrainedBox(
          constraints: BoxConstraints(
              maxHeight: MediaQuery.of(context).size.height - 43,),
          child: Column(
            children: [
              Text(AppLocaleScope.of(context).calculateMortage),
              const CalculatorForm(),
              const Spacer(),
              const CalculateButton(),
            ],
          ),
        ),
      ),
    );
  }
}
