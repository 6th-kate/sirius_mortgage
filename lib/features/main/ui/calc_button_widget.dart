import 'package:flutter/material.dart';

import '../../../core/core.dart';
import 'main_screen_button_template.dart';

class CalcButton extends StatelessWidget {
  final VoidCallback? onClick;
  const CalcButton({super.key, this.onClick});

  @override
  Widget build(BuildContext context) {
    return MainButtonTemplate(
      title: 'Рассчитать ипотеку',
      subtitle: 'Узнайте, сколько переплатите',
      image: ImageFromAsset.calcButton,
      onClick: onClick,
    );
  }
}
