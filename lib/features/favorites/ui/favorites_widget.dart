import 'package:flutter/material.dart';
import 'package:sirius_mortgage/features/favorites/ui/widgets/favorites_widget_tmp.dart';
import '../../locale/locale.dart';

class FavoritesButton extends StatelessWidget {
  final VoidCallback? onClick;
  const FavoritesButton({super.key, this.onClick});

  @override
  Widget build(BuildContext context) {
    return FavoritesButtonTemplate(
      title: AppLocaleScope.of(context).favorites,
      onClick: onClick,
    );
  }
}
