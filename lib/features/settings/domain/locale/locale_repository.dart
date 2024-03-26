import 'package:sirius_mortgage/features/settings/utils/simple_response.dart';

abstract interface class LocaleRepository {
  Future<SimpleResponse<String>> setTheme(String languageCode);
  Future<SimpleResponse<String>> getTheme();
}
