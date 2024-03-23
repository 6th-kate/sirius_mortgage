import 'package:flutter/material.dart';
import '../../../core/core.dart';
import 'main_screen_button_template.dart';

class CompareButton extends StatelessWidget {
  const CompareButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainButtonTemplate(
      title: 'Сравнить программы',
      subtitle: 'Найдите выгодный вариант',
      image: ImageFromAsset.compareButton,
    );
  }
}
