import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sirius_mortgage/features/settings/domain/theme/theme_repository.dart';
import 'package:sirius_mortgage/features/settings/utils/defaults.dart';
import 'package:sirius_mortgage/features/settings/utils/simple_response.dart';

import '../../../../../core/di/di.dart';
import '../../../../../core/di/settings_load_service.dart';
import '../theme_mode_enum.dart';

part 'theme_event.dart';

part 'theme_state.dart';

part 'theme_bloc.freezed.dart';

@injectable
class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final ThemeRepository _repository;

  ThemeBloc(this._repository)
      : super(
          ThemeState(
            themeMode: getIt<SettingLoadService>().themeMode,
          ),
        ) {
    on<ThemeEvent>((event, emit) {
      event.map(
        themeChanged: (ThemeChanged value) {
          _changeTheme(value, emit);
        },
        reload: (ThemeReload value) {
          _reloadTheme(value, emit);
        },
      );
    });
  }

  void _reloadTheme(ThemeReload event, Emitter emit) {
    event.response.map(
      ok: (response) {
        emit(ThemeState(themeMode: response.payload));
      },
      error: (response) {
        emit(
          ThemeState.error(
            themeMode: response.payload,
            errorMessage: response.message,
          ),
        );
      },
    );
  }

  void _changeTheme(ThemeChanged event, Emitter emit) {
    _repository.setTheme(event.themeMode).then((result) {
      result.map(
        ok: (_) {
          add(
            ThemeEvent.reload(
              SimpleResponse.ok(payload: event.themeMode),
            ),
          );
        },
        error: (response) {
          add(
            ThemeEvent.reload(
              SimpleResponse.error(
                payload: state.themeMode,
                message: response.message,
              ),
            ),
          );
        },
      );
    });
  }
}
