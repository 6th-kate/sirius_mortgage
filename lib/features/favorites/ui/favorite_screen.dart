import 'package:flutter/material.dart';
import 'package:sirius_mortgage/features/settings/ui/widgets/locale_setting.dart';
import 'package:sirius_mortgage/features/settings/ui/widgets/theme_setting.dart';

import '../../locale/locale.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocaleScope.of(context).favorites),
      ),
      body: const SafeArea(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: [
              ThemeSetting(),
              LocaleSetting(),
            ],
          ),
        ),
      ),
    );
  }
}
