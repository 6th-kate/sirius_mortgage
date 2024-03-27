import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sirius_mortgage/features/settings/domain/theme/theme_bloc/theme_bloc.dart';
import 'package:sirius_mortgage/features/settings/domain/theme/theme_mode_enum.dart';
import 'package:sirius_mortgage/features/settings/ui/widgets/setting_template.dart';
import 'package:sirius_mortgage/features/settings/ui/widgets/day_night_switch.dart';

import '../../../locale/locale.dart';

class ThemeSetting extends StatelessWidget {
  const ThemeSetting({super.key});

  @override
  Widget build(BuildContext context) {
    return SettingTemplate(
      title: AppLocaleScope.of(context).theme,
      suffixChild: DayNightSwitch(
        value: context.watch<ThemeBloc>().state.themeMode ==
            CustomThemeMode.baseDark,
        onChanged: (isDark) {
          BlocProvider.of<ThemeBloc>(context).add(
            ThemeEvent.themeChanged(
              isDark ? CustomThemeMode.baseDark : CustomThemeMode.baseLight,
            ),
          );
        },
      ),
    );
  }
}
