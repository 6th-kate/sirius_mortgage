import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirius_mortgage/features/settings/domain/theme/theme_mode_enum.dart';
import 'package:sirius_mortgage/features/settings/utils/defaults.dart';

import '../../features/settings/data/shared_prefs_service/keystore.dart';
import '../../features/settings/domain/currency/currency_enum.dart';

@injectable
class SettingLoadService {
  final CurrencyType currency;
  final String locale;
  final CustomThemeMode themeMode;

  const SettingLoadService(this.currency, this.locale, this.themeMode);

  @factoryMethod
  static SettingLoadService init(SharedPreferences sharedPrefs) {
    return SettingLoadService(
      CurrencyType.values[sharedPrefs.getInt(KeyStore.selectedCurrency) ??
          SettingDefaults.selectedCurrencyDefault],
      sharedPrefs.getString(KeyStore.selectedLocale) ??
          SettingDefaults.selectedLocaleDefault,
      CustomThemeMode.values[sharedPrefs.getInt(KeyStore.selectedThemeMode) ??
          SettingDefaults.selectedThemeModeDefault],
    );
  }
}
