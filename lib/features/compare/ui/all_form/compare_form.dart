import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../count/ui/screens/calculator/calc_form_sheet.dart';
import 'compare_form_save_button.dart';

void showCalculatorBottomSheet(BuildContext context) {
  showCupertinoModalBottomSheet(
    context: context,
    builder: (context) {
      return const Padding(
        padding: EdgeInsets.only(top: 16.0),
        child: CalculatorFormPage(
          button: CompareFormSaveButton(),
        ),
      );
    },
  );
}
