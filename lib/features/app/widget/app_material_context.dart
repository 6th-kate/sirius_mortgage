import 'package:flutter/material.dart';

import '../../locale/locale.dart';
import '../../theme/theme.dart';

class AppMaterialContext extends StatelessWidget {
  final Widget child;

  const AppMaterialContext({
    required this.child,
    super.key,
  });

  @override
  Widget build(BuildContext context) => MaterialApp(
        theme: AppThemeScope.of(context).theme,
        localizationsDelegates: AppLocaleScope.localizationsDelegatesOf(context),
        supportedLocales: AppLocaleScope.supportedLocalesOf(context),
        locale: AppLocaleScope.localeOf(context),
        home: child,
      );
}

