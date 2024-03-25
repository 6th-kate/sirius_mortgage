import 'package:flutter/material.dart';
import 'package:sirius_mortgage/features/main/ui/assets_path/images_paths.dart';

import '../../../locale/locale.dart';
import 'main_screen_button_template.dart';

class CalcButton extends StatelessWidget {
  const CalcButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MainButtonTemplate(
      title: AppLocaleScope.of(context).calculateMortgage,
      subtitle: AppLocaleScope.of(context).calculateMortgageLabel,
      image: ImageFromAsset.calcButton,
    );
  }
}