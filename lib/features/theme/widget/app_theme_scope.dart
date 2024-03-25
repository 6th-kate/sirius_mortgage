import 'package:flutter/material.dart';

import '../model/app_theme.dart';
import '../model/light_theme.dart';
import '../model/dark_theme.dart';

class AppThemeScope extends StatelessWidget {
  final Widget child;

  const AppThemeScope({required this.child, super.key});

  static AppTheme of(BuildContext context) {
    final AppThemeProvider? result =
        context.dependOnInheritedWidgetOfExactType<AppThemeProvider>();
    assert(result != null, 'No AppThemeProvider found in context');
    return result!.theme;
  }

  @override
  Widget build(BuildContext context) => AppThemeProvider(
        theme: const DarkAppTheme(),
        child: child,
      );
}

class AppThemeProvider extends InheritedWidget {
  final AppTheme theme;

  const AppThemeProvider({
    required this.theme,
    required super.child,
    super.key,
  });

  @override
  bool updateShouldNotify(AppThemeProvider oldWidget) {
    return oldWidget.theme != theme;
  }
}
