part of 'locale_bloc.dart';

@freezed
class LocaleState with _$LocaleState {
  const factory LocaleState({
    required String languageCode,
  }) = _LocaleState;

  const factory LocaleState.error({
    required String languageCode,
    required String errorMessage,
  }) = _LocaleErrorState;
}
