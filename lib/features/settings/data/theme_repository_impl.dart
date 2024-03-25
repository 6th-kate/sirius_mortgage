import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirius_mortgage/features/settings/data/shared_prefs_service/keystore.dart';
import 'package:sirius_mortgage/features/settings/domain/theme/theme_mode_enum.dart';
import 'package:sirius_mortgage/features/settings/domain/theme/theme_repository.dart';
import 'package:sirius_mortgage/features/settings/utils/simple_response.dart';

class ThemeRepositoryImpl implements ThemeRepository {
  @override
  Future<SimpleResponse<CustomThemeMode>> getTheme() async {
    final sharedPrefs = await SharedPreferences.getInstance();

    final result = sharedPrefs.getInt(KeyStore.selectedThemeMode);

    return result == null
        ? SimpleResponse.error(
            message: 'Not found theme on preferences',
            payload: CustomThemeMode.values[KeyStore.selectedThemeModeDefault],
          )
        : SimpleResponse.ok(
            payload: CustomThemeMode.values[result],
          );
  }

  @override
  Future<SimpleResponse<CustomThemeMode>> setTheme(
    CustomThemeMode themeMode,
  ) async {
    final sharedPrefs = await SharedPreferences.getInstance();

    final result =
        await sharedPrefs.setInt(KeyStore.selectedThemeMode, themeMode.index);

    return result
        ? SimpleResponse.ok(
            payload: themeMode,
          )
        : const SimpleResponse.error(
            message: 'Theme not set',
            payload: null,
          );
  }
}
