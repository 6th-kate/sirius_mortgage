import 'package:flutter/material.dart';
import 'package:sirius_mortgage/core/main/ui/widgets/main_screen_button_template.dart';

class CompareButton extends StatefulWidget {
  const CompareButton({super.key});

  @override
  State<CompareButton> createState() => _CompareButtonState();
}

class _CompareButtonState extends State<CompareButton> {
  @override
  Widget build(BuildContext context) {
    return const MainButtonTemplate(
        title: 'Сравнить программы',
        subtitle: 'Найдите выгодный вариант',
        image: 'assets/images/compare_button.png');
  }
}
