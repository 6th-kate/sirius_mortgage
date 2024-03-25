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
        supportedLocales: AppLocaleScope.supportedLocalesOf(context),
        localizationsDelegates: AppLocaleScope.localizationsDelegatesOf(context),
        theme: AppThemeScope.of(context).theme,
        locale: AppLocaleScope.localeOf(context),
        home: child,
      );
}
