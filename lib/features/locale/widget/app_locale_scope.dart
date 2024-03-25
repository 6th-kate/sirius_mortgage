import 'package:flutter/material.dart';

import '../../../core/core.dart';

class AppLocaleScope extends StatelessWidget {
  final Widget child;

  const AppLocaleScope({required this.child, super.key});

  static AppLocalizations of(BuildContext context) {
    return AppLocalizations.of(context);
  }

  static Locale localeOf(BuildContext context) {
    final AppLocaleProvider? result =
        context.dependOnInheritedWidgetOfExactType<AppLocaleProvider>();
    assert(result != null, 'No AppThemeProvider found in context');
    return result!.locale;
  }

  static List<LocalizationsDelegate<Object?>> localizationsDelegatesOf(
    BuildContext context,
  ) {
    return AppLocalizations.localizationsDelegates;
  }

  static List<Locale> supportedLocalesOf(BuildContext context) {
    return AppLocalizations.supportedLocales;
  }

  @override
  Widget build(BuildContext context) => AppLocaleProvider(
        locale: const Locale('ru'),
        child: child,
      );
}

class AppLocaleProvider extends InheritedWidget {
  final Locale locale;

  const AppLocaleProvider({
    required this.locale,
    required super.child,
    super.key,
  });

  @override
  bool updateShouldNotify(AppLocaleProvider oldWidget) {
    return oldWidget.locale != locale;
  }
}
