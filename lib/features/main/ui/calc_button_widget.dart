import 'package:flutter/material.dart';

import '../../../core/core.dart';
import 'main_screen_button_template.dart';

class CalcButton extends StatelessWidget {
  const CalcButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainButtonTemplate(
      title: 'Рассчитать вашу ипотеку',
      subtitle: 'Узнайте, сколько переплатите',
      image: ImageFromAsset.calcButton,
    );
  }
}
