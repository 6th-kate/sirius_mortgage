import 'package:sirius_mortgage/features/settings/utils/simple_response.dart';
import 'package:sirius_mortgage/features/settings/domain/theme/theme_mode_enum.dart';

abstract interface class ThemeRepository {
  Future<SimpleResponse<CustomThemeMode>> setTheme(CustomThemeMode themeMode);

  Future<SimpleResponse<CustomThemeMode>> getTheme();
}
