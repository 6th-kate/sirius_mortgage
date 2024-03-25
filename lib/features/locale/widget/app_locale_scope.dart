import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sirius_mortgage/features/settings/data/locale_repository_impl.dart';
import 'package:sirius_mortgage/features/settings/domain/locale/locale_bloc/locale_bloc.dart';

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
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => LocaleBloc(LocaleRepositoryImpl())
          ..add(LocaleEvent.needLocaleLoad()),
        child: BlocBuilder<LocaleBloc, LocaleState>(
          builder: (context, state) {
            return AppLocaleProvider(
              locale: Locale(state.languageCode),
              child: child,
            );
          },
        ),
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
