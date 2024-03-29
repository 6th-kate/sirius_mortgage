import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../core/di/di.dart';
import '../../../../../core/di/settings_load_service.dart';
import '../../../utils/simple_response.dart';
import '../locale_repository.dart';

part 'locale_bloc.freezed.dart';
part 'locale_event.dart';
part 'locale_state.dart';

@injectable
class LocaleBloc extends Bloc<LocaleEvent, LocaleState> {
  final LocaleRepository _repository;

  LocaleBloc(this._repository)
      : super(
          LocaleState(
            languageCode: getIt<SettingLoadService>().locale,
          ),
        ) {
    on<LocaleEvent>((event, emit) {
      event.map(
        localeChanged: (LocaleChanged value) {
          _changeLocale(value, emit);
        },
        reload: (LocaleReload value) {
          _reloadLocale(value, emit);
        },
      );
    });
  }

  void _reloadLocale(LocaleReload event, Emitter emit) {
    event.response.map(
      ok: (response) {
        emit(LocaleState(languageCode: response.payload));
      },
      error: (response) {
        emit(
          LocaleState.error(
            languageCode: response.payload,
            errorMessage: response.message,
          ),
        );
      },
    );
  }

  void _changeLocale(LocaleChanged event, Emitter emit) {
    _repository.setLocale(event.languageCode).then((result) {
      result.map(
        ok: (_) {
          add(
            LocaleEvent.reload(
              SimpleResponse.ok(payload: event.languageCode),
            ),
          );
        },
        error: (response) {
          add(
            LocaleEvent.reload(
              SimpleResponse.error(
                payload: state.languageCode,
                message: response.message,
              ),
            ),
          );
        },
      );
    });
  }
}
