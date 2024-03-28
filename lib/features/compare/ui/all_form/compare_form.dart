import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../../count/domain/domain_models/output_model.dart';
import '../../../count/ui/screens/calculator/calc_form_sheet.dart';
import 'compare_form_save_button.dart';

void showCompareFormBottomSheet(BuildContext context, ValueNotifier<OutputDomainModel?> output) {
  showCupertinoModalBottomSheet(
    context: context,
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(top: 16.0),
        child: CalculatorFormPage(
          button: CompareFormSaveButton(output: output),
        ),
      );
    },
  );
}
