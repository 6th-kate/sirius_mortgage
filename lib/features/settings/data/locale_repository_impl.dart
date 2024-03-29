import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sirius_mortgage/features/settings/data/shared_prefs_service/keystore.dart';

import '../domain/locale/locale_repository.dart';
import '../utils/simple_response.dart';

@Injectable(as: LocaleRepository)
class LocaleRepositoryImpl implements LocaleRepository {
  @override
  Future<SimpleResponse<String>> getLocale() async {
    final sharedPrefs = await SharedPreferences.getInstance();

    final result = sharedPrefs.getString(KeyStore.selectedLocale);

    return result == null
        ? const SimpleResponse.error(
            message: 'Not found theme on preferences',
            payload: KeyStore.selectedLocaleDefault,
          )
        : SimpleResponse.ok(
            payload: result,
          );
  }

  @override
  Future<SimpleResponse<String>> setLocale(
    String languageCode,
  ) async {
    final sharedPrefs = await SharedPreferences.getInstance();

    final result =
        await sharedPrefs.setString(KeyStore.selectedLocale, languageCode);

    return result
        ? SimpleResponse.ok(
            payload: languageCode,
          )
        : const SimpleResponse.error(
            message: 'Locale not set',
            payload: null,
          );
  }
}
