import 'package:flutter/material.dart';

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
        home: child,
      );
}
