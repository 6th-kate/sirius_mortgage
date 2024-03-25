import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sirius_mortgage/features/settings/data/theme_repository_impl.dart';
import 'package:sirius_mortgage/features/settings/domain/theme/theme_bloc/theme_bloc.dart';
import 'package:sirius_mortgage/features/settings/domain/theme/theme_mode_enum.dart';

import '../model/app_theme.dart';

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
  Widget build(BuildContext context) => BlocProvider(
        create: (context) =>
            ThemeBloc(ThemeRepositoryImpl())..add(ThemeEvent.needThemeLoad()),
        // TODO(REWRITE CORRECTLY)
        child: BlocBuilder<ThemeBloc, ThemeState>(
          buildWhen: (previous, current) {
            return previous.themeMode != current.themeMode;
          },
          builder: (context, state) {
            return AppThemeProvider(
              theme: switch (state.themeMode) {
                CustomThemeMode.system => const LightAppTheme(),
                CustomThemeMode.baseLight => const LightAppTheme(),
                CustomThemeMode.baseDark => const LightAppTheme(),
              },
              child: child,
            );
          },
        ),
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
