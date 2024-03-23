import 'package:flutter/material.dart';
import '../../../core/core.dart';
import 'main_screen_button_template.dart';

class CompareButton extends StatelessWidget {
  final VoidCallback? onClick;
  const CompareButton({super.key, this.onClick});

  @override
  Widget build(BuildContext context) {
    return MainButtonTemplate(
      title: 'Сравнить программы',
      subtitle: 'Найдите выгодный вариант',
      image: ImageFromAsset.compareButton,
      onClick: onClick,
    );
  }
}
