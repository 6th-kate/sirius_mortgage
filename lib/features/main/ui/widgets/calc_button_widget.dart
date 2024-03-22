import 'package:flutter/material.dart';

import 'main_screen_button_template.dart';

class CalcButton extends StatefulWidget {
  const CalcButton({super.key});

  @override
  State<CalcButton> createState() => _CalcButtonState();
}

class _CalcButtonState extends State<CalcButton> {
  @override
  Widget build(BuildContext context) {
    return const MainButtonTemplate(
      title: 'Рассчитать вашу ипотеку',
      subtitle: 'Узнайте, сколько переплатите',
      image: 'assets/images/calc_button.png',
    );
  }
}