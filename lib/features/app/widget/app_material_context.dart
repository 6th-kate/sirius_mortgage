import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../core/core.dart';
import '../../theme/theme.dart';

class AppMaterialContext extends StatelessWidget {
  final Widget child;

  const AppMaterialContext({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) => MaterialApp(
        supportedLocales: AppLocalizations.supportedLocales,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        theme: AppThemeScope.of(context).theme,
        home: child,
      );
}
