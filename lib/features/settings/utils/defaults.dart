import 'package:sirius_mortgage/features/settings/domain/currency/currency_enum.dart';

import '../domain/theme/theme_mode_enum.dart';

class SettingDefaults {
  static final int selectedThemeModeDefault = CustomThemeMode.system.index;
  static const String selectedLocaleDefault = 'ru';

  static final int selectedCurrencyDefault = CurrencyType.rub.index;
}
