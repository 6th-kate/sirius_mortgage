import 'package:sirius_mortgage/features/settings/domain/theme/theme_mode_enum.dart';

class KeyStore {
  KeyStore._();

  static const String selectedThemeMode = 'selectedThemeMode';
  static final int selectedThemeModeDefault = CustomThemeMode.system.index;

  static const String selectedLocale = 'selectedLocale';
  static const String selectedLocaleDefault = 'ru';
}
