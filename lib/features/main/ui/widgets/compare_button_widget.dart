import 'package:flutter/material.dart';
import 'package:sirius_mortgage/features/main/ui/assets_path/images_paths.dart';
import '../../../locale/locale.dart';
import 'main_screen_button_template.dart';

class CompareButton extends StatelessWidget {
  const CompareButton({super.key});

  @override
  Widget build(BuildContext context) {
    return MainButtonTemplate(
      title: AppLocaleScope.of(context).compareMortgage,
      subtitle: AppLocaleScope.of(context).compareMortgageLabel,
        image: ImageFromAsset.compareButton,);
  }
}
